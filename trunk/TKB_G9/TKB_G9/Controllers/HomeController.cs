using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace TKB_G9.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (HttpContext.User.Identity.IsAuthenticated)
            {
                return View("Index");
            }
            string user = HttpContext.Request["txtUser"];
            if (user == null || user == "")
                return View();
            string password = HttpContext.Request["txtPwd"];
            password = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5");
            G9Service.G9_Service sv = new G9Service.G9_Service();
            bool result = sv.KiemTraDangNhap(user, password);
            if (result)
            {
                FormsAuthentication.SetAuthCookie(user, false);
                RedirectToAction("Index", "Home");
            }

            return View();
        }
        public ActionResult Login()
        {
            if (!HttpContext.User.Identity.IsAuthenticated)
                return View();
            else
                return View("Welcome");
        }
        public void Logout()
        {
            FormsAuthentication.SignOut();
        }


    }
}
