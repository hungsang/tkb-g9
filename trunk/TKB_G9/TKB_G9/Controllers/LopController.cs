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

            string temp = "<div id=\"dvDKHP\" class=\"lastnews\" style=\"width:600px;background-image:none;\">";
            temp += "<h2>Danh sách lớp</h2><br />";
            if (list.Count() > 0)
            {
                temp += "<table class=\"dsdangky\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">";
                temp += "<tr class=\"tableheader\">";
                temp += "<th width=\"80px\" align=\"center\">Mã lớp</th>";
                temp += "<th align=\"center\">Tên lớp</th>";
                temp += "<th align=\"center\">Khối</th>";
                temp += "<th align=\"center\">Ca học</th>";
                temp += "<th align=\"center\">Sỉ số</th>";
                foreach (G9Service.Lop lop in list)
                {
                    temp += "<tr>";
                    temp += "<td class=\"tcenter\">" + lop.MaLop + "</td>";
                    temp += "<td class=\"tcenter\">" + lop.TenLop + "</td>";
                    temp += "<td class=\"tcenter\">" + lop.KhoiLop + "</td>";
                    temp += "<td class=\"tcenter\">" + lop.CaHoc + "</td>";
                    temp += "<td class=\"tcenter\">" + lop.SiSo + "</td>";
                    temp += "</tr>";
                }
                temp += "</table>";
            }
            else
            {
                temp += "không có lớp nào";
            }

            temp += "</div>";
            ViewData["DSLop"] = temp;
            return View();
        }
    }
}
