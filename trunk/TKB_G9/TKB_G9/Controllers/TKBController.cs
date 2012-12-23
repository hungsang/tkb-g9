using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TKB_G9.G9Service;

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
        public ActionResult SapXep()
        {
            G9Service.G9_Service sv = new G9Service.G9_Service();
            // input
            //ChiTietTKB[][] arrTKB = new ChiTietTKB[8][];
            //List<MonHoc> dsMonHoc = new List<MonHoc>();
            //dsMonHoc.Add(new MonHoc() { MaMonHoc = 1, SoTiet = 4 });
            //dsMonHoc.Add(new MonHoc() { MaMonHoc = 2, SoTiet = 4 });
            //dsMonHoc.Add(new MonHoc() { MaMonHoc = 3, SoTiet = 3 });
            //dsMonHoc.Add(new MonHoc() { MaMonHoc = 4, SoTiet = 3 });
            //dsMonHoc.Add(new MonHoc() { MaMonHoc = 5, SoTiet = 1 });
            //dsMonHoc.Add(new MonHoc() { MaMonHoc = 6, SoTiet = 1 });
            //List<Lop> dsLop = new List<Lop>();
            //dsLop.Add(new Lop() { MaLop = 1 });
            //dsLop.Add(new Lop() { MaLop = 2 });
            //dsLop.Add(new Lop() { MaLop = 3 });
            //dsLop.Add(new Lop() { MaLop = 4 });
            //dsLop.Add(new Lop() { MaLop = 5 });
            //dsLop.Add(new Lop() { MaLop = 6 });
            //List<Phong> dsPhong = new List<Phong>();
            //dsPhong.Add(new Phong() { MaPhong = 1, SucChua = 50 });
            //dsPhong.Add(new Phong() { MaPhong = 2, SucChua = 50 });
            //dsPhong.Add(new Phong() { MaPhong = 3, SucChua = 50 });
            //dsPhong.Add(new Phong() { MaPhong = 4, SucChua = 50 });
            //dsPhong.Add(new Phong() { MaPhong = 5, SucChua = 50 });
            //dsPhong.Add(new Phong() { MaPhong = 6, SucChua = 50 });
            //List<GiaoVien> dsGiaoVien = new List<GiaoVien>();
            //dsGiaoVien.Add(new GiaoVien() { MaGiaoVien = 1 });
            //dsGiaoVien.Add(new GiaoVien() { MaGiaoVien = 2 });
            //dsGiaoVien.Add(new GiaoVien() { MaGiaoVien = 3 });
            //dsGiaoVien.Add(new GiaoVien() { MaGiaoVien = 4 });
            //dsGiaoVien.Add(new GiaoVien() { MaGiaoVien = 5 });
            //dsGiaoVien.Add(new GiaoVien() { MaGiaoVien = 6 });
            //G9Service.ThoiKhoaBieu[] list = sv.CreateTKB("2009", arrTKB, dsMonHoc.ToArray(), dsLop.ToArray(), dsPhong.ToArray(), dsGiaoVien.ToArray());
            G9Service.ThoiKhoaBieu[] list = sv.TestCreateTKB();
            if (list == null || list.Count() <= 0)
            {
                ViewData["DSTKB"] = "Chưa có thời khóa biểu";
                return View();
            }
            ViewData["DSTKB"] = list.Count();
            return View();
        }
    }
}
