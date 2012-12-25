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
                        String tenlop = sv.getLopByMaChiTietTKB(cur.MaChiTietTKB).TenLop;
                        String tenphong = sv.getPhongByMaChiTietTKB(cur.MaChiTietTKB).TenPhong;
                        if (j >= cur.TietBatDau && j <= cur.TietKetThuc && cur.Thu == i)
                        {
                            checkin = tenlop + "/" + tenphong;
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
            G9Service.Lop[] list = sv.GetDanhSachLop();

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
            foreach (G9Service.Lop lop in list)
            {
                if (lop.KhoiLop == j.ToString())
                {
                    temp += "    <li class=\"li-atv fl\">";
                    temp += "        <ul>";
                    temp += "            <li class=\"stt\">" + i + "</li>";
                    temp += "            <li class=\"account_name\">" + lop.TenLop + "</li>";
                    temp += "            <li class=\"user_type\">" + lop.KhoiLop + "</li>";
                    temp += "            <li class=\"active\">" + lop.SiSo + "</li>";
                    temp += "            <li class=\"edit\"><div style='padding-left:20px;'><a href='" + Url.Content("~/Lop/CapNhatLop?id=" + lop.MaLop) + "'><div class='btnEdit'></div></a>";
                    temp += "            <a href='" + Url.Content("~/Lop/XoaLop?id=" + lop.MaLop) + "'><div style='margin-left:5px;' class='btnXoa'></div></a></div></li>";
                    temp += "        </ul>";
                    temp += "    </li>";
                    i++;
                }
            }
            temp += "</ul>";
            temp += "</div><br />";
            

            ViewData["DSLop"] = temp;
            return View();
        }
    }
}
