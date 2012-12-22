using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TKB_G9.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (Session["isLogin"] == null)
                Session["isLogin"] = "0";
            if (Session["userLogin"] == null)
                Session["userLogin"] = "";
            return View();
        }
        public ActionResult Login()
        {
            if (Session["isLogin"] == "0")
                return View();
            else
                return null;
        }
    }
}
