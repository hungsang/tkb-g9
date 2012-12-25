using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TKB_G9.G9Service;
using System.Configuration;
using TKB_G9.Models;

namespace TKB_G9.Controllers
{
    public class TKBController : Controller
    {
        //
        // GET: /TKB/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Lop()
        {
            return View();
        }

        public ActionResult SapXep()
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            string temp = "";
            temp += "Năm học";
            temp += "<select name=\"namHoc\">";
            for (int i = 0; i < 3; i++)
            {
                temp += "<option value=\"" + (DateTime.Now.Year + i) + "\">" + (DateTime.Now.Year + i) + "</option>";
            }
            temp += "</select>";
            temp += "<br />";
            ViewData["NamHoc"] = temp;
            temp = "<div>";
            Lop[] dsLop = sv.GetDanhSachLop();
            foreach (Lop l in dsLop)
            {
                temp += "<input type='checkbox' value='" + l.MaLop + "' id='chkLop" + l.MaLop + "' name='lops'/>" + l.TenLop + "<br/>";
            }
            temp += "</div>";
            temp += "<input type=\"submit\" value=\"Sắp xếp\" />";
            ViewData["dsLop"] = temp;
            return View();
        }

        [HttpPost]
        public ActionResult SapXep(string namHoc, List<int> lops)
        {
            // input
            G9Service.G9_Service sv = new G9Service.G9_Service();
            List<Lop> dsLop = new List<Lop>();
            if (lops != null)
            {
                foreach (var l in lops)
                {
                    Lop lop = sv.GetLop(l);
                    dsLop.Add(new Lop() { MaLop = lop.MaLop, SiSo = lop.SiSo, CaHoc = lop.CaHoc });
                }
                //ThoiKhoaBieu[] list = sv.GetTKB(namHoc);
                if (sv.CreateTKB(dsLop.ToArray(), namHoc))
                {
                    ViewData["TKB"] = XemTKB(namHoc);
                }
                else
                {
                    ViewData["TKB"] = "Lỗi phát sinh thời khóa biểu";
                }
            }
            return View();
        }

        private string XemTKB(string namHoc)
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            string temp = "";
            ThoiKhoaBieu[] list = sv.GetTKB(namHoc);
            if (list == null || list.Count() <= 0)
            {
                return "Chưa có thời khóa biểu";
            }
            string strLop = "";
            foreach (ThoiKhoaBieu tkb in list)
            {
                Lop lop = sv.GetLopFromTKB(tkb.MaTKB);
                strLop += " | <span id=\"span" + lop.MaLop + "\" onClick='Show(\"div" + lop.MaLop + "\")' class='menuLop'>" + lop.TenLop + "</span>";
                temp += "<div id=\"div" + lop.MaLop + "\" class=\"divTKB\">";
                temp += "<div><a href='Sua?lop=" + lop.MaLop + "&namHoc=" + namHoc + "'>" + lop.TenLop + "</a></div>";
                temp += "<div>Tổng số môn: $TongSoMon</div>";
                temp += "<div>Số môn chưa xếp: $TongSoConLai</div>";
                temp += "        <table>";
                temp += "            <tr>";
                temp += "                <th></th>";
                temp += "                <th>Hai</th>";
                temp += "                <th>Ba</th>";
                temp += "                <th>Tư</th>";
                temp += "                <th>Năm</th>";
                temp += "                <th>Sáu</th>";
                temp += "                <th>Bảy</th>";
                temp += "                <th>Chủ nhật</th>";
                temp += "            </tr>";
                for (int j = 1; j < 13; j++)
                {
                    temp += "   <tr>";
                    temp += "       <td>Tiết " + j + "</td>";
                    for (int i = 2; i <= 8; i++)
                    {
                        temp += "       <td>&" + tkb.MaTKB + i + j + "&</td>";
                    }
                    temp += "   </tr>";
                }

                temp += "</table>";
                temp += "</div>";
                ChiTietTKB[] chiTiets = sv.GetDanhSachChiTietTKB(tkb.MaTKB);
                int tongSoMon = 0;
                string soMonConLai = "";
                List<MonHoc> lstMonHoc = sv.GetDanhSachMonHoc().ToList();
                List<MonHoc> lstTemp = new List<MonHoc>();
                foreach (ChiTietTKB chiTiet in chiTiets)
                {
                    ChiTietTKB oChiTiet = sv.GetChiTietTKB(chiTiet.MaChiTietTKB);
                    MonHoc mh = sv.GetMonHocFromTKB(oChiTiet.MaChiTietTKB);
                    GiaoVien gv = sv.GetGiaoVienFromTKB(oChiTiet.MaChiTietTKB);
                    temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), mh.TenMonHoc + "<br/>" + gv.TenGiaoVien);
                    foreach (var mhoc in lstMonHoc)
                    {
                        if (mhoc.MaMonHoc == mh.MaMonHoc)
                        {
                            tongSoMon++;
                            lstTemp.Add(mhoc);
                        }
                    }
                }
                foreach (var mhoc in lstMonHoc)
                {
                    if (!lstTemp.Contains(mhoc))
                    {
                        soMonConLai += mhoc.TenMonHoc + ",";
                    }
                }
                temp = temp.Replace("$TongSoMon", tongSoMon.ToString());
                if (soMonConLai.Length > 0)
                {
                    temp = temp.Replace("$TongSoConLai", soMonConLai.Substring(0, soMonConLai.Length - 1));
                }
                else
                {
                    temp = temp.Replace("$TongSoConLai", "Không có");
                }
                for (int j = 1; j < 13; j++)
                {
                    for (int i = 2; i <= 8; i++)
                    {
                        temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, i, j), "");
                    }
                }

            }
            ViewData["menuLop"] = strLop;
            return temp;
        }

        public ActionResult Sua(int lop, string namHoc)
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            string temp = "";
            ThoiKhoaBieu tkb = sv.GetTKBFromLop(lop, namHoc);
            Lop oLop = sv.GetLopFromTKB(tkb.MaTKB);
            bool flagSang = oLop.CaHoc.Equals("Sáng");
            int tietDau = Int32.Parse(ConfigurationManager.AppSettings["TongSoTietSang"]);
            int tietCuoi = Int32.Parse(ConfigurationManager.AppSettings["TongSoTietChieu"]) + tietDau;
            ViewData["TenLop"] = oLop.TenLop;
            temp += "<div id=\"div" + oLop.MaLop + "\" class=\"divTKB user-tlb\">";
            temp += "<div><a href='Sua?lop=" + oLop.MaLop + "'&namHoc=" + namHoc + ">" + oLop.TenLop + "</a></div>";
            temp += "<div>Tổng số môn: $TongSoMon</div>";
            temp += "<div>Số môn chưa xếp: $TongSoConLai</div>";
            temp += "<ul style='list-style: none;'>";
            temp += "					<li class='hder'>";
            temp += "						<ul style='list-style: none;'>";
            temp += "							<li class='tiet'>&nbsp;</li>";
            temp += "							<li class='t2'>Hai</li>";
            temp += "							<li class='t3'>Ba</li>";
            temp += "							<li class='t4'>Tư</li>";
            temp += "							<li class='t5'>Năm</li>";
            temp += "							<li class='t6'>Sáu</li>";
            temp += "							<li class='t7'>Bảy</li>";
            temp += "							<li class='cn'>CN</li>";
            temp += "						</ul>";
            temp += "					</li>";
            for (int j = 1; j <= tietDau; j++)
            {
                temp += "   <li>";
                temp += "		<ul style='list-style: none;'>";
                temp += "       <li class='tiet'>Tiết " + j + "</li>";
                for (int i = 2; i < 8; i++)
                {
                    temp += "       <li class='t" + i + "' " + (flagSang ? "onclick='LoadChiTietTKBInfo(\"$" + tkb.MaTKB + i + j + "$\"," + i + "," + j + ")'" : "style='background-color:#bbb;'") + ">&" + tkb.MaTKB + i + j + "&</li>";
                }
                temp += "       <li class='cn'" + (flagSang ? "onclick='LoadChiTietTKBInfo(\"$" + tkb.MaTKB + 8 + j + "$\"," + 8 + "," + j + ")'" : "style='background-color:#bbb;'") + ">&" + tkb.MaTKB + '8' + j + "&</li>";
                temp += "       </ul>";
                temp += "   </li>";
            }
            for (int j = tietDau + 1; j <= tietCuoi; j++)
            {
                temp += "   <li>";
                temp += "		<ul style='list-style: none;'>";
                temp += "       <li class='tiet'>Tiết " + j + "</li>";
                for (int i = 2; i < 8; i++)
                {
                    temp += "       <li class='t" + i + "'" + (!flagSang ? "onclick='LoadChiTietTKBInfo(\"$" + tkb.MaTKB + i + j + "$\"," + i + "," + j + ")'" : "style='background-color:#bbb;'") + ">&" + tkb.MaTKB + i + j + "&</li>";
                }
                temp += "       <li class='cn'" + (!flagSang ? "onclick='LoadChiTietTKBInfo(\"$" + tkb.MaTKB + 8 + j + "$\"," + 8 + "," + j + ")'" : "style='background-color:#bbb;'") + ">&" + tkb.MaTKB + '8' + j + "&</li>";
                temp += "       </ul>";
                temp += "   </li>";
            }
            //onclick='NewTKB(" + tkb.MaTKB + "," + i + "," + j + ")'
            temp += "</ul>";
            temp += "</div>";
            ChiTietTKB[] chiTiets = sv.GetDanhSachChiTietTKB(tkb.MaTKB);
            int tongSoMon = 0;
            string soMonConLai = "";
            List<MonHoc> lstMonHoc = sv.GetDanhSachMonHoc().ToList();
            List<MonHoc> lstTemp = new List<MonHoc>();
            foreach (ChiTietTKB chiTiet in chiTiets)
            {
                ChiTietTKB oChiTiet = sv.GetChiTietTKB(chiTiet.MaChiTietTKB);
                MonHoc mh = sv.GetMonHocFromTKB(oChiTiet.MaChiTietTKB);
                GiaoVien gv = sv.GetGiaoVienFromTKB(oChiTiet.MaChiTietTKB);
                Phong phong = sv.GetPhongFromTKB(oChiTiet.MaChiTietTKB);
                string inputContent = "<input id='hdn" + chiTiet.MaChiTietTKB + "' type='hidden' value='" + oChiTiet.Thu + "|" + oChiTiet.TietBatDau + "|" + mh.MaMonHoc + "|" + mh.TenMonHoc + "|" + gv.MaGiaoVien + "|" + gv.TenGiaoVien + "|" + phong.MaPhong + "|" + phong.TenPhong + "'/>";
                temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), mh.TenMonHoc + inputContent);
                temp = temp.Replace(String.Format("${0}{1}{2}$", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), chiTiet.MaChiTietTKB.ToString());
                foreach (var mhoc in lstMonHoc)
                {
                    if (mhoc.MaMonHoc == mh.MaMonHoc)
                    {
                        tongSoMon++;
                        lstTemp.Add(mhoc);
                    }
                }
            }
            foreach (var mhoc in lstMonHoc)
            {
                if (!lstTemp.Contains(mhoc))
                {
                    soMonConLai += mhoc.TenMonHoc + ",";
                }
            }
            temp = temp.Replace("$TongSoMon", tongSoMon.ToString());
            if (soMonConLai.Length > 0)
            {
                temp = temp.Replace("$TongSoConLai", soMonConLai.Substring(0, soMonConLai.Length - 1));
            }
            else
            {
                temp = temp.Replace("$TongSoConLai", "Không có");
            }
            for (int j = 1; j < 13; j++)
            {
                for (int i = 2; i <= 8; i++)
                {
                    temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, i, j), "&nbsp;");
                    temp = temp.Replace(String.Format("${0}{1}{2}$", tkb.MaTKB, i, j), tkb.MaTKB.ToString());
                }
            }
            ViewData["TKB"] = temp;
            return View();
        }

        public ActionResult TaoMoi(int lop, string namHoc)
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            if (sv.NewTKB(lop, namHoc))
            {
                string temp = "";
                ThoiKhoaBieu tkb = sv.GetTKBFromLop(lop, namHoc);
                Lop oLop = sv.GetLop(lop);
                ViewData["TenLop"] = oLop.TenLop;
                temp += "<div id=\"div" + oLop.MaLop + "\" class=\"divTKB user-tlb\">";
                temp += "<ul style='list-style: none;'>";
                temp += "					<li class='hder'>";
                temp += "						<ul style='list-style: none;'>";
                temp += "							<li class='tiet'>&nbsp;</li>";
                temp += "							<li class='t2'>Hai</li>";
                temp += "							<li class='t3'>Ba</li>";
                temp += "							<li class='t4'>Tư</li>";
                temp += "							<li class='t5'>Năm</li>";
                temp += "							<li class='t6'>Sáu</li>";
                temp += "							<li class='t7'>Bảy</li>";
                temp += "							<li class='cn'>CN</li>";
                temp += "						</ul>";
                temp += "					</li>";
                for (int j = 1; j < 13; j++)
                {
                    temp += "   <li>";
                    temp += "		<ul style='list-style: none;'>";
                    temp += "       <li class='tiet'>Tiết " + j + "</li>";
                    for (int i = 2; i < 8; i++)
                    {
                        temp += "       <li class='t" + i + "' onclick='NewTKB(" + tkb.MaTKB + "," + i + "," + j + ")'></li>";
                    }
                    temp += "       <li class='cn'onclick='NewTKB(" + tkb.MaTKB + "," + 8 + "," + j + "," + ")'></li>";
                    temp += "       </ul>";
                    temp += "   </li>";
                }

                temp += "</ul>";
                temp += "</div>";

                ViewData["TKB"] = temp;
            }
            else
            {
                ViewData["TKB"] = "Không tạo được TKB. Vui lòng thử lại sau";
            }
            return View();
        }
    }
}
