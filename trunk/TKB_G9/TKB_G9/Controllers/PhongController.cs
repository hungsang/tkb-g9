using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TKB_G9.Controllers
{
    public class PhongController : Controller
    {
        //
        // GET: /Phong/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DanhSachPhong()
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            G9Service.Phong[] list = sv.GetDanhSachPhong();

            if (list == null || list.Count() <= 0)
            {
                ViewData["DSPhong"] = "Không có phòng";
                return View();
            }

            string temp = "";

            temp += "<div class=\"user-tlb\">";
            temp += "    <ul style=\"list-style: none\">";
            temp += "        <li class=\"hder\">";
            temp += "            <ul>";
            temp += "                <li class=\"stt\">STT</li>";
            temp += "                <li class=\"account_name\">Tên phòng</li>";
            temp += "                <li class=\"user_type\">Tình trạng</li>";
            temp += "                <li class=\"active\">Sức chứa</li>";
            temp += "                <li class=\"edit\">Thao tác</li>";
            temp += "            </ul>";
            temp += "        </li>";
            int i = 1;
            foreach (G9Service.Phong gv in list)
            {
                temp += "    <li class=\"li-atv fl\">";
                temp += "        <ul>";
                temp += "            <li class=\"stt\">" + i + "</li>";
                temp += "            <li class=\"account_name\">" + gv.TenPhong + "</li>";
                temp += "            <li class=\"user_type\">" + gv.TinhTrang + "</li>";
                temp += "            <li class=\"active\">" + gv.SucChua + "</li>";
                temp += "            <li class=\"edit\"><div style='padding-left:20px;'><a href='" + Url.Content("~/Phong/CapNhatPhong?id=" + gv.MaPhong) + "'><div class='btnEdit'></div></a>";
                temp += "            <a href='" + Url.Content("~/Phong/XoaPhong?id=" + gv.MaPhong) + "'><div style='margin-left:5px;' class='btnXoa'></div></a></div></li>";
                temp += "        </ul>";
                temp += "    </li>";
                i++;
            }
            temp += "</ul>";
            temp += "</div><br />";

            ViewData["DSPhong"] = temp;
            return View();
        }

        public ActionResult ThemPhong()
        {
            ViewData["DSPhong"] = "";
            return View();
        }
        public ActionResult CapNhatPhong()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachPhong", "Phong");
            }
            if (HttpContext.Request["id"] == null || HttpContext.Request["id"].Equals(""))
                return RedirectToAction("DanhSachPhong", "Phong");

            int id = Int32.Parse(HttpContext.Request["id"]);
            G9Service.G9_Service ws = new G9Service.G9_Service();
            G9Service.Phong gv = ws.GetPhong(id);

            ViewData["MaPhong"] = id;
            ViewData["TenPhong"] = gv.TenPhong;
            
            ViewData["TinhTrang"] = gv.TinhTrang;
            ViewData["SucChua"] = gv.SucChua;

            return View();
        }

        [HttpPost]
        public ActionResult CapNhatPhongPost()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachPhong", "Phong");
            }
            G9Service.Phong gv = new G9Service.Phong();
            gv.MaPhong = Int32.Parse(HttpContext.Request["txtMaPhong"]);
            gv.TenPhong = HttpContext.Request["txtTenPhong"];
            gv.TinhTrang = HttpContext.Request["txtTinhTrang"];
            gv.SucChua = Int32.Parse(HttpContext.Request["txtSucChua"]);

            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.CapNhatPhong(gv);

            return (result == true) ? RedirectToAction("DanhSachPhong", "Phong") : RedirectToAction("CapNhatPhong", "Phong");
        }

        [HttpPost]
        public ActionResult ThemPhongPost()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachPhong", "Phong");
            }
            G9Service.Phong gv = new G9Service.Phong();
            gv.TenPhong = HttpContext.Request["txtTenPhong"];
            gv.TinhTrang = HttpContext.Request["txtTinhTrang"];
            gv.SucChua = Int32.Parse(HttpContext.Request["txtSucChua"]);

            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.ThemPhong(gv);

            return (result == true) ? RedirectToAction("DanhSachPhong", "Phong") : RedirectToAction("ThemPhong", "Phong");
        }

        public ActionResult XoaPhong()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
            {
                return RedirectToAction("DanhSachPhong", "Phong");
            }
            if (HttpContext.Request["id"] == null || HttpContext.Request["id"].Equals(""))
                return RedirectToAction("DanhSachPhong", "Phong");

            int id = Int32.Parse(HttpContext.Request["id"]);
            G9Service.G9_Service ws = new G9Service.G9_Service();
            bool result = ws.XoaPhong(id);

            return RedirectToAction("DanhSachPhong", "Phong");
        }
    }
}
