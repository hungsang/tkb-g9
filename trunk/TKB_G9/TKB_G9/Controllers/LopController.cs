using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TKB_G9.Controllers
{
    public class LopController : Controller
    {
        //
        // GET: /Lop/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DanhSachLop()
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            G9Service.Lop[] list = sv.GetDanhSachLop();

            if (list==null || list.Count()<=0)
            {
                ViewData["DSLop"] = "Không có lớp";
                return View();
            }

            string temp = "";
            
            temp += "<div class=\"user-tlb\">";
            temp += "    <ul style=\"list-style: none\">";
            temp += "        <li class=\"hder\">";
            temp += "            <ul>";
            temp += "                <li class=\"stt\">STT</li>";
            temp += "                <li class=\"account_name\">Lớp</li>";
            temp += "                <li class=\"user_type\">Khối</li>";
            temp += "                <li class=\"active\">Sỉ số</li>";
            temp += "                <li class=\"edit\">Thao tác</li>";
            temp += "            </ul>";
            temp += "        </li>";
            int i = 1;
            foreach (G9Service.Lop lop in list)
            {
                temp += "    <li class=\"li-atv fl\">";
                temp += "        <ul>";
                temp += "            <li class=\"stt\">" + i + "</li>";
                temp += "            <li class=\"account_name\">" + lop.TenLop + "</li>";
                temp += "            <li class=\"user_type\">" + lop.KhoiLop + "</li>";
                temp += "            <li class=\"active\">" + lop.SiSo + "</li>";
                temp += "            <li class=\"edit\"><div style='margin:0 35px;' onclick=\"loadFormEditClassInfo('" + lop.MaLop + "')\" class='btnEdit'></div></li>";
                temp += "        </ul>";
                temp += "    </li>";
                i++;
            }
            temp += "</ul>";
            temp += "</div>";

            ViewData["DSLop"] = temp;
            return View();
        }
        public ActionResult ThemLop()
        {


            ViewData["DSLop"] = "";
            return View();
        }
    }
}
