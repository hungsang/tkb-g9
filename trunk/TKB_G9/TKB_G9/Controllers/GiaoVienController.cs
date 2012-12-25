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
            G9Service.G9_Service sv = new G9Service.G9_Service();

            var list = sv.getListTKBByGiaoVien(User.Identity.Name);
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
            for (int j = 0; j < 12; j++)
            {
                temp += "   <tr>";
                temp += "       <td>Tiết " + j + "</td>";
                for (int i = 0; i < 7; i++)
                {

                    temp += "       <td>&" + i + "&" + j + "&</td>";//tkb.MaTKB +
                }
                temp += "   </tr>";
            }

            temp += "</table>";
            foreach (var cur in list)
            {
                for (int j = 0; j < 12; j++)
                {
                    for (int i = 0; i < 7; i++)
                    {
                        String checkin = "";
                        String tenLop = sv.getLopByMaChiTietTKB(cur.MaChiTietTKB).TenLop;
                        String tenphong = sv.getPhongByMaChiTietTKB(cur.MaChiTietTKB).TenPhong;
                        if (j >= cur.TietBatDau && j <= cur.TietKetThuc && cur.Thu == i)
                        {
                            checkin = tenLop + "/" + tenphong;
                            temp = temp.Replace("&" + i + "&" + j+"&", checkin);
                        }
                        else
                        {
                            temp = temp.Replace("&" + i + "&" + j+"&", "");
                        }
                        //temp = temp.Replace("&" + i + "&" + j, "");
                    }

                }

                //ChiTietTKB[] chiTiets = sv.GetDanhSachChiTietTKB(tkb.MaTKB);

                //foreach (ChiTietTKB chiTiet in chiTiets)
                //{
                //    ChiTietTKB oChiTiet = sv.GetChiTietTKB(chiTiet.MaChiTietTKB);
                //    MonHoc mh = sv.GetMonHocFromTKB(oChiTiet.MaChiTietTKB);
                //    temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), mh.TenMonHoc);
                //}

                //for (int j = 0; j < 12; j++)
                //{
                //    for (int i = 0; i < 7; i++)
                //    {
                //        temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, i, j), "");
                //    }
                //}
            }
            ViewData["TKBGV"] = temp;
            return View();
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
