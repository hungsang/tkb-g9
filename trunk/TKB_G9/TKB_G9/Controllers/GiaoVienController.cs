using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TKB_G9.G9Service;

namespace TKB_G9.Controllers
{
    public class GiaoVienController : Controller
    {
        //
        // GET: /GiaoVien/

        public ActionResult Index()
        {
            return View();
        }
        [Group9Authorize]
        public ActionResult XemThoiKhoaBieu()
        {

            String gv = User.Identity.Name;
            string temp = genTkb(gv);
            ViewData["TKBGV"] = temp;
            return View();
        }

        private static string genTkb(String gv)
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            var list = sv.getListTKBByGiaoVien(gv);
            string temp = "";
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
                for (int i = 2; i < 9; i++)
                {

                    temp += "       <td>&" + i + "&" + j + "&</td>";//tkb.MaTKB +
                }
                temp += "   </tr>";
            }
            temp += "</table>";
            if (list == null || list.Count() == 0)
            {
                for (int j = 1; j < 13; j++)
                {
                    for (int i = 2; i < 9; i++)
                    {
                        temp = temp.Replace("&" + i + "&" + j + "&", "");
                    }

                }
            }
            foreach (var cur in list)
            {
                String checkin = "";
                String tenLop = "";
                if (sv.getLopByMaChiTietTKB(cur.MaChiTietTKB) != null)
                    tenLop = sv.getLopByMaChiTietTKB(cur.MaChiTietTKB).TenLop;
                String tenphong = "";
                if (sv.getPhongByMaChiTietTKB(cur.MaChiTietTKB) != null)
                    tenphong = sv.getPhongByMaChiTietTKB(cur.MaChiTietTKB).TenPhong;

                checkin = tenLop + "/" + tenphong;
                temp = temp.Replace("&" + cur.TietBatDau + "&" + cur.Thu + "&", checkin);
                
            }
            for (int j = 1; j < 13; j++)
            {
                for (int i = 2; i < 9; i++)
                {
                    temp = temp.Replace("&" + i + "&" + j + "&", "");
                }

            }
            
            return temp;
        }
        public ActionResult XemThoiKhoaBieuGiaoVien(String giaovien)
        {
            try
            {
                String tmp = "<select id='cbbGiaoVien'>{0}</select>";
                G9Service.G9_Service sv = new G9Service.G9_Service();
                var lst = sv.GetDanhSachGiaoVien();
                String tmpItem = "";
                foreach (var cur in lst)
                {
                    String item = "<option value='{0}'>{1}</option>";
                    item = String.Format(item, cur.MaGiaoVien, cur.TenGiaoVien);
                    tmpItem += item;
                }

                tmp = String.Format(tmp, tmpItem);
                ViewData["strCbbGiaoVien"] = tmp;

                return View();
            }
            catch
            {
                return View("Error");
            }
        }
        public String changeGiaoVienCbb(String giaovien)
        {
            try
            {
                if (giaovien != null)
                {
                    G9Service.G9_Service sv = new G9Service.G9_Service();
                    String temp = genTkb(sv.GetGiaoVien(Convert.ToInt32(giaovien)).TenTK);
                    return temp;
                }
                return null;
            }
            catch
            {
                return null;
            }
        }
        public ActionResult DanhSachGiaoVien()
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            G9Service.GiaoVien[] list = sv.GetDanhSachGiaoVien();

            if (list == null || list.Count() <= 0)
            {
                ViewData["DSGiaoVien"] = "Không có giáo viên";
                return View();
            }

            string temp = "";

            temp += "<div class=\"user-tlb\">";
            temp += "    <ul style=\"list-style: none\">";
            temp += "        <li class=\"hder\">";
            temp += "            <ul>";
            temp += "                <li class=\"stt\">STT</li>";
            temp += "                <li class=\"account_name\">Họ tên</li>";
            temp += "                <li class=\"user_type\">Giới tính</li>";
            temp += "                <li class=\"active\">Ngày sinh</li>";
            temp += "                <li class=\"edit\">Thao tác</li>";
            temp += "            </ul>";
            temp += "        </li>";
            int i = 1;
            foreach (G9Service.GiaoVien gv in list)
            {
                temp += "    <li class=\"li-atv fl\">";
                temp += "        <ul>";
                temp += "            <li class=\"stt\">" + i + "</li>";
                temp += "            <li class=\"account_name\">" + gv.TenGiaoVien + "</li>";
                temp += "            <li class=\"user_type\">" + gv.GioiTinh + "</li>";
                temp += "            <li class=\"active\">" + gv.NgaySinh + "</li>";
                temp += "            <li class=\"edit\"><div style='padding-left:20px;'><a href='" + Url.Content("~/GiaoVien/CapNhatGiaoVien?id=" + gv.MaGiaoVien) + "'><div class='btnEdit'></div></a>";
                temp += "            <a href='" + Url.Content("~/GiaoVien/XoaGiaoVien?id=" + gv.MaGiaoVien) + "'><div style='margin-left:5px;' class='btnXoa'></div></a></div></li>";
                temp += "        </ul>";
                temp += "    </li>";
                i++;
            }
            temp += "</ul>";
            temp += "</div><br />";

            ViewData["DSGiaoVien"] = temp;
            return View();
        }
        public ActionResult ThemGiaoVien()
        {
            G9Service.G9_Service ws = new G9Service.G9_Service();
            G9Service.MonHoc[] mh = ws.GetDanhSachMonHoc();
            ViewData["DSMonHoc"] = "";
            foreach (MonHoc monHoc in mh)
            {
                ViewData["DSMonHoc"] += "<option id='Option' value='" + monHoc.MaMonHoc + "' >" + monHoc.TenMonHoc + "</option>";
            }
            ViewData["DSGiaoVien"] = "";
            return View();
        }
        public ActionResult CapNhatGiaoVien()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachGiaoVien", "GiaoVien");
            }
            if (HttpContext.Request["id"] == null || HttpContext.Request["id"].Equals(""))
                return RedirectToAction("DanhSachGiaoVien", "GiaoVien");

            int id = Int32.Parse(HttpContext.Request["id"]);
            G9Service.G9_Service ws = new G9Service.G9_Service();
            G9Service.GiaoVien gv = ws.GetGiaoVien(id);

            ViewData["MaGiaoVien"] = id;
            ViewData["TenGiaoVien"] = gv.TenGiaoVien;
            if (gv.GioiTinh.Equals("Nam"))
            {
                ViewData["GioiTinh"] += "<option id='Option' selected value='Nam' >Nam</option>";
                ViewData["GioiTinh"] += "<option id='Option' value='Nữ' >Nữ</option>";
            }
            else
            {
                ViewData["GioiTinh"] += "<option id='Option' value='Nam' >Nam</option>";
                ViewData["GioiTinh"] += "<option id='Option' selected value='Nữ' >Nữ</option>";
            }
            ViewData["DiaChi"] = gv.DiaChi;
            ViewData["DienThoai"] = gv.DienThoai;
            ViewData["Email"] = gv.Email;

            return View();
        }
        [HttpPost]
        public ActionResult CapNhatGiaoVienPost()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachGiaoVien", "GiaoVien");
            }
            G9Service.GiaoVien gv = new G9Service.GiaoVien();
            gv.MaGiaoVien = Int32.Parse(HttpContext.Request["txtMaGiaoVien"]);
            gv.TenGiaoVien = HttpContext.Request["txtTenGiaoVien"];
            gv.GioiTinh = HttpContext.Request["txtGioiTinh"];
            gv.DiaChi = HttpContext.Request["txtDiaChi"];
            gv.DienThoai = HttpContext.Request["txtDienThoai"];
            gv.Email = HttpContext.Request["txtEmail"];

            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.CapNhatGiaoVien(gv);

            return (result == true) ? RedirectToAction("DanhSachGiaoVien", "GiaoVien") : RedirectToAction("CapNhatGiaoVien", "GiaoVien");
        }

        [HttpPost]
        public ActionResult ThemGiaoVienPost()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachGiaoVien", "GiaoVien");
            }
            G9Service.GiaoVien gv = new G9Service.GiaoVien();
            gv.TenGiaoVien = HttpContext.Request["txtTenGiaoVien"];
            gv.GioiTinh = HttpContext.Request["txtGioiTinh"];
            gv.DiaChi = HttpContext.Request["txtDiaChi"];
            gv.DienThoai = HttpContext.Request["txtDienThoai"];
            gv.Email = HttpContext.Request["txtMonHoc"];

            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.ThemGiaoVien(gv);

            return (result == true) ? RedirectToAction("DanhSachGiaoVien", "GiaoVien") : RedirectToAction("ThemGiaoVien", "GiaoVien");
        }

        public ActionResult XoaGiaoVien()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachGiaoVien", "GiaoVien");
            }
            if (HttpContext.Request["id"] == null || HttpContext.Request["id"].Equals(""))
                return RedirectToAction("DanhSachGiaoVien", "GiaoVien");

            int id = Int32.Parse(HttpContext.Request["id"]);
            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.XoaGiaoVien(id);

            return RedirectToAction("DanhSachGiaoVien", "GiaoVien");
        }




    }
}
