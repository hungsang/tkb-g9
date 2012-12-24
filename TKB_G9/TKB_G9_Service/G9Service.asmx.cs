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

        [WebMethod]
        public Lop GetLop(int maLop)
        {
            using (var db = new TKBEntities())
            {
                Lop lop = db.Lops.FirstOrDefault(l => l.MaLop == maLop);
                return lop;
            }
        }
        /******************TKB******************/
        #region TKB
        [WebMethod]
        public bool GenerateTKB(string namHoc, List<List<ChiTietTKB>> arrTKB1, List<MonHoc> dsMonHoc, List<Lop> dsLop, List<Phong> dsPhong, List<GiaoVien> dsGiaoVien)
        {
            try
            {
                // Xóa thông tin TKB cũ sẽ sắp mới
                foreach (Lop l in dsLop)
                {
                    DeleteTKB(l.MaLop, namHoc);
                }
                // Lấy danh sách TKB cũ 
                List<ThoiKhoaBieu> lstTKB = GetTKB(namHoc);
                List<List<List<ChiTietTKB>>> listTKBs = new List<List<List<ChiTietTKB>>>();
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
                    int caHoc = dsLop[l].CaHoc == null ? 1 : (dsLop[l].CaHoc.Equals("Sáng") ? 1 : 2);
                    phong = GetPhong(ref dsPhong, (int)dsLop[l].SiSo);
                    ThoiKhoaBieu tkb = BuildTKB(namHoc, caHoc, dsMonHoc, dsLop, ref dsPhong, dsGiaoVien, lstTKB, l, arrTKB, phong);
                    lstTKB.Add(tkb);
                    //Tối ưu TKB
                    listTKBs.Add(OptimizeTKB(arrTKB));
                }
                // For debugging
                string s = "";
                for (int i = 0; i < listTKBs.Count; i++)
                {
                    s += dsLop[i].TenLop + "\t1\t2\t3\t4\t5\t6\t7\t8\t9\t10\t11\t12\n";
                    for (int j = 0; j < listTKBs[i].Count; j++)
                    {
                        s += (j == 6 ? "CN" : (j + 2).ToString()) + "\t";
                        for (int k = 0; k < listTKBs[i][j].Count; k++)
                        {
                            s += listTKBs[i][j][k].MonHoc == null ? "----\t" : listTKBs[i][j][k].MonHoc.TenMonHoc + " \t";
                        }
                        s += "\n";
                    }
                    s += "--\n";
                }
                // End for debugging
                // Save TKB;
                SaveTKB(lstTKB, dsLop);
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        [WebMethod]
        public bool TestCreateTKB()
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
                List<Lop> dsLop = db.Lops.ToList();
                //List<Lop> dsLop = new List<Lop>();
                //dsLop.Add(new Lop() { MaLop = 1, SiSo = 20, CaHoc= });
                //dsLop.Add(new Lop() { MaLop = 2, SiSo = 20 });
                List<MonHoc> dsMonHoc = db.MonHocs.ToList();
                List<Phong> dsPhong = db.Phongs.ToList();
                List<GiaoVien> dsGiaoVien = db.GiaoViens.ToList();
                return GenerateTKB("2012", arrTKB, dsMonHoc, dsLop, dsPhong, dsGiaoVien);

            }
        }
        [WebMethod]
        public bool CreateTKB(List<Lop> dsLop, string namHoc)
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
                List<Phong> dsPhong = db.Phongs.ToList();
                List<GiaoVien> dsGiaoVien = db.GiaoViens.ToList();
                return GenerateTKB(namHoc, arrTKB, dsMonHoc, dsLop, dsPhong, dsGiaoVien);

            }
        }

        [WebMethod]
        public List<ThoiKhoaBieu> GetTKB(string namHoc)
        {
            List<ThoiKhoaBieu> temp;
            using (var db = new TKBEntities())
            {
                temp = db.ThoiKhoaBieux.Where(p => p.NamHoc == namHoc).ToList();
                List<ThoiKhoaBieu> listTKB = new List<ThoiKhoaBieu>();
                foreach (ThoiKhoaBieu t in temp)
                {
                    ThoiKhoaBieu tkb = t;
                    Lop lop = GetLop((int)t.LopReference.EntityKey.EntityKeyValues[0].Value);
                    tkb.Lop = new Lop() { MaLop = lop.MaLop };
                    listTKB.Add(tkb);
                }
                return listTKB;
            }
        }

        [WebMethod]
        public ThoiKhoaBieu GetTKBFromLop(int maLop)
        {
            using (var db = new TKBEntities())
            {
                ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.Lop.MaLop == maLop);
                return tkb;
            }
        }

        [WebMethod]
        public List<ChiTietTKB> GetDanhSachChiTietTKB(int maTKB)
        {
            using (var db = new TKBEntities())
            {
                List<ChiTietTKB> lst = db.ChiTietTKBs.Where(p => p.ThoiKhoaBieu.MaTKB == maTKB).ToList();
                return lst;
            }
        }

        [WebMethod]
        public ChiTietTKB GetChiTietTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                ChiTietTKB chiTiet = db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet);
                return chiTiet;
            }
        }

        [WebMethod]
        public Lop GetLopFromTKB(int maTKB)
        {
            using (var db = new TKBEntities())
            {
                int maLop = (int)db.ThoiKhoaBieux.FirstOrDefault(p => p.MaTKB == maTKB).LopReference.EntityKey.EntityKeyValues[0].Value;
                Lop lop = db.Lops.FirstOrDefault(p => p.MaLop == maLop);
                return lop;
            }
        }

        [WebMethod]
        public GiaoVien GetGiaoVienFromTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                int maGV = (int)db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet).GiaoVienReference.EntityKey.EntityKeyValues[0].Value;
                GiaoVien gv = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == maGV);
                return gv;
            }
        }

        [WebMethod]
        public MonHoc GetMonHocFromTKB(int maChiTiet)
        {
            using (var db = new TKBEntities())
            {
                int maMH = (int)db.ChiTietTKBs.FirstOrDefault(p => p.MaChiTietTKB == maChiTiet).MonHocReference.EntityKey.EntityKeyValues[0].Value;
                MonHoc mh = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == maMH);
                return mh;
            }
        }

        private void SaveTKB(List<ThoiKhoaBieu> lstTKB, List<Lop> dsLop)
        {
            using (var db = new TKBEntities())
            {

                foreach (ThoiKhoaBieu oTKB in lstTKB)
                {
                    if (oTKB.MaTKB ==0)
                    {
                        ThoiKhoaBieu tkb = new ThoiKhoaBieu()
                        {
                            Lop = db.Lops.FirstOrDefault(p => p.MaLop == oTKB.Lop.MaLop),
                            NamHoc = oTKB.NamHoc
                        };
                        db.AddToThoiKhoaBieux(tkb);
                        db.SaveChanges();
                        foreach (ChiTietTKB ct in oTKB.ChiTietTKBs.ToList())
                        {
                            ChiTietTKB chiTiet = new ChiTietTKB()
                            {
                                ThoiKhoaBieu = tkb,
                                MonHoc = db.MonHocs.FirstOrDefault(p => p.MaMonHoc == ct.MonHoc.MaMonHoc),
                                GiaoVien = db.GiaoViens.FirstOrDefault(p => p.MaGiaoVien == ct.GiaoVien.MaGiaoVien),
                                Phong = db.Phongs.FirstOrDefault(p => p.MaPhong == ct.Phong.MaPhong),
                                TietBatDau = ct.TietBatDau + 1,
                                TietKetThuc = ct.TietKetThuc + 1,
                                Thu = ct.Thu + 2
                            };
                            db.AddToChiTietTKBs(chiTiet);
                            db.SaveChanges();
                        }
                    }
                }
            }

        }

        private void DeleteTKB(int maLop, string namHoc)
        {
            using (var db = new TKBEntities())
            {
                ThoiKhoaBieu tkb = db.ThoiKhoaBieux.FirstOrDefault(p => p.Lop.MaLop == maLop && p.NamHoc == namHoc);
                if (tkb != null)
                {
                    List<ChiTietTKB> chiTiets = db.ChiTietTKBs.Where(p => p.ThoiKhoaBieu.MaTKB == tkb.MaTKB).ToList();
                    if (chiTiets != null)
                    {
                        foreach (var ct in chiTiets)
                        {
                            db.DeleteObject(ct);
                        }
                        db.SaveChanges();
                    }
                    db.DeleteObject(tkb);
                    db.SaveChanges();
                }
            }
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

        private List<List<ChiTietTKB>> OptimizeTKB(List<List<ChiTietTKB>> arrTKB)
        {
            return arrTKB;
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
                if (dsPhong[i].TinhTrang.ToLower().Equals("trống") && dsPhong[i].SucChua >= siSo)
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
        #endregion
        /******************Quy Dinh******************/
        #region Quy dinh
        #endregion
    }
}