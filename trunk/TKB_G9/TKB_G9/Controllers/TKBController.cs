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
                temp += "<div><a href='Sua?lop=" + lop.MaLop + "'>" + lop.TenLop + "</a></div>";
                temp += "";
                temp += "";
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

                foreach (ChiTietTKB chiTiet in chiTiets)
                {
                    ChiTietTKB oChiTiet = sv.GetChiTietTKB(chiTiet.MaChiTietTKB);
                    MonHoc mh = sv.GetMonHocFromTKB(oChiTiet.MaChiTietTKB);
                    GiaoVien gv = sv.GetGiaoVienFromTKB(oChiTiet.MaChiTietTKB);
                    temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), mh.TenMonHoc + "<br/>" + gv.TenGiaoVien);
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

        public ActionResult Sua(int lop)
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            string temp = "";
            ThoiKhoaBieu tkb = sv.GetTKBFromLop(lop);
            Lop oLop = sv.GetLopFromTKB(tkb.MaTKB);
            ViewData["TenLop"] = oLop.TenLop;
            temp += "<div id=\"div" + oLop.MaLop + "\" class=\"divTKB user-tlb\">";
            temp += "<div><a href='~/TKB/Sua?lop=" + oLop.MaLop + "'>" + oLop.TenLop + "</a></div>";
            temp += "";
            temp += "";
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
                    temp += "       <li class='t" + i + "' onclick='LoadGiaoVien(\"$"+ tkb.MaTKB + i + j +"$\")'>&" + tkb.MaTKB + i + j + "&</li>";
                }
                temp += "       <li class='cn'>&" + tkb.MaTKB + '8' + j + "&</li>";
                temp += "       </ul>";
                temp += "   </li>";
            }

            temp += "</ul>";
            temp += "</div>";
            ChiTietTKB[] chiTiets = sv.GetDanhSachChiTietTKB(tkb.MaTKB);

            foreach (ChiTietTKB chiTiet in chiTiets)
            {
                ChiTietTKB oChiTiet = sv.GetChiTietTKB(chiTiet.MaChiTietTKB);
                MonHoc mh = sv.GetMonHocFromTKB(oChiTiet.MaChiTietTKB);
                GiaoVien gv = sv.GetGiaoVienFromTKB(oChiTiet.MaChiTietTKB);
                temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), mh.TenMonHoc);
                temp = temp.Replace(String.Format("${0}{1}{2}$", tkb.MaTKB, oChiTiet.Thu, oChiTiet.TietBatDau), chiTiet.MaChiTietTKB.ToString());
            }

            for (int j = 1; j < 13; j++)
            {
                for (int i = 2; i <= 8; i++)
                {
                    temp = temp.Replace(String.Format("&{0}{1}{2}&", tkb.MaTKB, i, j), "&nbsp;");
                }
            }
            ViewData["TKB"] = temp;
            return View();
        }
    }
}
