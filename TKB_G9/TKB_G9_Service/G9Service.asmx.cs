using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;

namespace TKB_G9_Service
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://abc.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class G9_Service : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        /****************TÀI KHOẢN**************/
        [WebMethod]
        public bool KiemTraDangNhap(string user, string password)
        {
            TKBEntities db = new TKBEntities();
            var list = db.TaiKhoans
                            .Where(tk => tk.TenTaiKhoan == user)
                            .Where(tk => tk.MatKhau == password)
                            .Count();
            if (list == 1)
                return true;
            return false;
        }

        /*****************LOP*******************/
        [WebMethod]
        public List<Lop> GetDanhSachLop()
        {
            TKBEntities db = new TKBEntities();
            var list = db.Lops.OrderBy(sort => sort.MaLop).ToList();
            return list;
        }


        /******************TKB******************/
        [WebMethod]
        public List<ThoiKhoaBieu> CreateTKB(string namHoc, List<List<ChiTietTKB>> arrTKB1, List<MonHoc> dsMonHoc, List<Lop> dsLop, List<Phong> dsPhong, List<GiaoVien> dsGiaoVien)
        {
            List<ThoiKhoaBieu> lstTKB = new List<ThoiKhoaBieu>();

            for (int l = 0; l < dsLop.Count; l++)
            {
                List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
                for (int i = 0; i < arrTKB1.Count; i++)
                {
                    List<ChiTietTKB> temp = new List<ChiTietTKB>();
                    for (int j = 0; j < arrTKB1[i].Count; j++)
                    {
                        ChiTietTKB ct = new ChiTietTKB();
                        AddChiTietTKB(ref ct, arrTKB1[i][j]);
                        temp.Add(ct);
                    }
                    arrTKB.Add(temp);
                }

                // Tìm phòng trống
                Phong phong = new Phong();
                phong = GetPhong(ref dsPhong, (int)dsLop[l].SiSo);
                ThoiKhoaBieu tkb = BuildTKB(namHoc, (dsLop[l].CaHoc.Equals("Sáng") ? 1 : 2), dsMonHoc, dsLop, ref dsPhong, dsGiaoVien, lstTKB, l, arrTKB, phong);
                lstTKB.Add(tkb);
            }
            // For debugging
            string s = "";
            for (int i = 0; i < lstTKB.Count; i++)
            {
                s += lstTKB[i].Lop.TenLop + " ";
                for (int j = 0; j < lstTKB[i].ChiTietTKBs.Count; j++)
                {
                    s += lstTKB[i].ChiTietTKBs.ToList()[j].Thu + " " + lstTKB[i].ChiTietTKBs.ToList()[j].TietBatDau + " " + lstTKB[i].ChiTietTKBs.ToList()[j].MonHoc.TenMonHoc + " " + lstTKB[i].ChiTietTKBs.ToList()[j].GiaoVien.TenGiaoVien + ";";
                }
                s += "@@@@";
            }
            // End for debugging

            // Tối ưu TKB
            return OptimizeTKB(lstTKB);
        }

        private void AddChiTietTKB(ref ChiTietTKB ct, ChiTietTKB chiTietTKB)
        {
            ct.MaChiTietTKB = chiTietTKB.MaChiTietTKB;
            ct.MonHoc = chiTietTKB.MonHoc;
            ct.GiaoVien = chiTietTKB.GiaoVien;
            ct.Phong = chiTietTKB.Phong;
            ct.ThoiKhoaBieu = chiTietTKB.ThoiKhoaBieu;
            ct.TietBatDau = chiTietTKB.TietBatDau;
            ct.TietKetThuc = chiTietTKB.TietKetThuc;
            ct.Thu = chiTietTKB.Thu;
        }

        private List<ThoiKhoaBieu> OptimizeTKB(List<ThoiKhoaBieu> lstTKB)
        {
            return lstTKB;
        }

        private ThoiKhoaBieu BuildTKB(string namHoc, int buoi, List<MonHoc> dsMonHoc, List<Lop> dsLop, ref List<Phong> dsPhong, List<GiaoVien> dsGiaoVien, List<ThoiKhoaBieu> lstTKB, int l, List<List<ChiTietTKB>> arrTKB, Phong phong)
        {
            ThoiKhoaBieu tkb = new ThoiKhoaBieu();
            tkb.Lop = dsLop[l];
            tkb.NamHoc = namHoc;
            int tietDau = buoi == 1 ? 0 : Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]);
            int tietCuoi = buoi == 1 ? (tietDau + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"])) : (tietDau + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]));
            for (int k = 0; k < dsMonHoc.Count; k++)
            {
                MonHoc mh = dsMonHoc[k];
                for (int i = 0; i < 7; i++) // 7days: from Monday to Sunday
                {
                    for (int j = tietDau; j < tietCuoi; j++)
                    {
                        if (arrTKB[i][j].MonHoc == null) // Còn trống
                        {
                            if (KiemTraMonHoc(arrTKB, mh, i, j))
                            {
                                ChiTietTKB ctTKB = new ChiTietTKB();
                                // Xếp giáo viên vào môn học ở ngày i tiết j
                                GiaoVien giaoVien = new GiaoVien();
                                if (GetGiaoVien(lstTKB, arrTKB, dsGiaoVien, mh.MaMonHoc, i, j, out giaoVien))
                                {
                                    ctTKB.ThoiKhoaBieu = tkb;
                                    ctTKB.MonHoc = mh;
                                    ctTKB.GiaoVien = giaoVien;
                                    ctTKB.Phong = phong;
                                    ctTKB.TietBatDau = j;
                                    ctTKB.TietKetThuc = j;
                                    ctTKB.Thu = i;
                                    tkb.ChiTietTKBs.Add(ctTKB);
                                    arrTKB[i][j].MonHoc = mh;
                                    arrTKB[i][j].GiaoVien = giaoVien;
                                    arrTKB[i][j].Phong = phong;
                                    arrTKB[i][j].TietBatDau = j;
                                    arrTKB[i][j].TietKetThuc = j;
                                    arrTKB[i][j].Thu = i;
                                }
                            }
                        }
                    }
                }
            }
            return tkb;
        }

        private bool KiemTraMonHoc(List<List<ChiTietTKB>> arrTKB, MonHoc mh, int thu, int tiet)
        {
            int dem = 0;
            for (int i = 0; i < arrTKB.Count; i++)
            {
                for (int j = 0; j < arrTKB[i].Count; j++)
                {
                    if (arrTKB[i][j].MonHoc != null && arrTKB[i][j].MonHoc.MaMonHoc == mh.MaMonHoc)
                        dem++;
                }
            }
            if (dem < mh.SoTiet && (tiet < 2 || (tiet >= 2 && (arrTKB[thu][tiet - 2].MonHoc == null || (arrTKB[thu][tiet - 2].MonHoc != null && arrTKB[thu][tiet - 2].MonHoc.MaMonHoc != mh.MaMonHoc)))))
                return true;
            return false;
        }

        private Phong GetPhong(ref List<Phong> dsPhong, int siSo)
        {
            Phong phong = new Phong();
            for (int i = 0; i < dsPhong.Count; i++)
            {
                if (dsPhong[i].TinhTrang.Equals("trống") && dsPhong[i].SucChua >= siSo)
                {
                    phong = dsPhong[i];
                    break;
                }
            }
            dsPhong.Remove(phong);
            return phong;
        }

        private bool GetGiaoVien(List<ThoiKhoaBieu> lstTKB, List<List<ChiTietTKB>> arrTKB, List<GiaoVien> dsGiaoVien, int maMonHoc, int thu, int tiet, out GiaoVien giaoVien)
        {
            giaoVien = null;
            for (int i = 0; i < dsGiaoVien.Count; i++)
                if (dsGiaoVien[i].MonHoc.MaMonHoc == maMonHoc)
                {
                    if (tiet < 2 || (tiet >= 2 && (arrTKB[thu][tiet - 2].MonHoc == null || (arrTKB[thu][tiet - 2].MonHoc != null && arrTKB[thu][tiet - 2].MonHoc.MaMonHoc != maMonHoc))))
                    {
                        if (KiemTraTKBLopKhac(lstTKB, dsGiaoVien[i], thu, tiet, maMonHoc))
                        {
                            giaoVien = dsGiaoVien[i];
                            return true;
                        }
                    }
                }
            return false;
        }

        private bool KiemTraTKBLopKhac(List<ThoiKhoaBieu> lstTKB, GiaoVien giaoVien, int thu, int tiet, int maMonHoc)
        {
            for (int j = 0; j < lstTKB.Count; j++)
            {
                for (int k = 0; k < lstTKB[j].ChiTietTKBs.Count; k++)
                {
                    ChiTietTKB ct = lstTKB[j].ChiTietTKBs.ToList()[k];
                    if (ct.Thu == thu && ct.TietBatDau == tiet && ct.MonHoc.MaMonHoc == maMonHoc && ct.GiaoVien.MaGiaoVien == giaoVien.MaGiaoVien)
                        return false;
                }
            }
            return true;
        }
        [WebMethod]
        public List<ThoiKhoaBieu> TestCreateTKB()
        {
            List<List<ChiTietTKB>> arrTKB = new List<List<ChiTietTKB>>();
            for (int i = 2; i <= 8; i++) // 7days: from Monday to Sunday
            {
                List<ChiTietTKB> dsTKB = new List<ChiTietTKB>();
                for (int j = 1; j <= Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]) + Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]); j++)
                {
                    ChiTietTKB ct = new ChiTietTKB();
                    ct.Thu = i;
                    ct.TietBatDau = j;
                    ct.TietKetThuc = j;
                    dsTKB.Add(ct);
                }
                arrTKB.Add(dsTKB);
            }
            using (var db = new TKBEntities())
            {
                List<MonHoc> dsMonHoc = db.MonHocs.ToList();
                List<Lop> dsLop = db.Lops.ToList();
                List<Phong> dsPhong = db.Phongs.ToList();
                List<GiaoVien> dsGiaoVien = db.GiaoViens.ToList();
                 return CreateTKB("2009", arrTKB, dsMonHoc, dsLop, dsPhong, dsGiaoVien);

            }
        }
    }
}