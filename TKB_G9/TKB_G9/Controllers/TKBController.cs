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

        //public ActionResult SapXep()
        //{
        //    return View();   
        //}

        //[HttpPost]
        public ActionResult SapXep()
        {
            // input
            G9Service.G9_Service sv = new G9Service.G9_Service();

            ThoiKhoaBieu[] list = sv.GetTKB("2012");
            if (list == null || list.Count() <= 0)
            {
                ViewData["TKB"] = "Chưa có thời khóa biểu";
                return View();
            }
            string temp = "";

            foreach (ThoiKhoaBieu tkb in list)
            {
                Lop lop = sv.GetLopFromTKB(tkb.MaTKB);
                temp += "<div>" + lop.TenLop + "</div>";
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
                ChiTietTKB[] chiTiets = sv.GetDanhSachChiTietTKB(tkb.MaTKB);

                foreach (ChiTietTKB chiTiet in chiTiets)
                {
                    ChiTietTKB oChiTiet = sv.GetChiTietTKB(chiTiet.MaChiTietTKB);
                    MonHoc mh = sv.GetMonHocFromTKB(oChiTiet.MaChiTietTKB);
                    temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), mh.TenMonHoc);
                }

                for (int j = 1; j < 13; j++)
                {
                    for (int i = 2; i <= 8; i++)
                    {
                        temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, i, j), "");
                    }
                }

            }
            ViewData["TKB"] = temp;
            return View();
        }
    }
}
