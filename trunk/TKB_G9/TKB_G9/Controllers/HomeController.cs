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
        public int setSession(String queryStr, String value)
        {
            try
            {
                queryStr = queryStr.Trim();
                Session[queryStr] = value;
                return 1;
            }
            catch
            {
                return 0;
            }
        }
        public String getSession(String queryStr)
        {
            try
            {
                String str = Session[queryStr].ToString();
                return str;
            }
            catch
            {
                return null;
            }
        }
        public ActionResult Index()
        {
            if (HttpContext.User.Identity.IsAuthenticated)
            {
                //return Session["userLogin"].ToString();
                return View("Index");
            }
            string user = HttpContext.Request["txtUser"];
            if (user == null || user == "")
                return View();
            string password = HttpContext.Request["txtPwd"];
            password = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5");
            bool result = true;
            if (result)
            {
                FormsAuthentication.SetAuthCookie(user, false);
                RedirectToAction("Index", "Home");
                //return user;
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
        public void checkLogin(String user, String pwd)
        {
            if (HttpContext.User.Identity.IsAuthenticated)
            {
                //return Session["userLogin"].ToString();
            }

            pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "md5");
            bool result = true;
            if (result)
            {
                FormsAuthentication.SetAuthCookie(user, false);
                RedirectToAction("Index", "Home");
                //return user;
            }
            //return null;
        }
        public string getUserName()
        {
            return HttpContext.User.Identity.Name;
        }
        public void Logout()
        {
            FormsAuthentication.SignOut();
        }
    }
}
