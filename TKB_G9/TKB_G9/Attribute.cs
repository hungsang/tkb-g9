using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TKB_G9.G9Service;
using System.Diagnostics.CodeAnalysis;
namespace TKB_G9
{

    [SuppressMessage("Microsoft.Performance", "CA1813:AvoidUnsealedAttributes", Justification = "Unsealed so that subclassed types can set properties in the default constructor or override our behavior.")]
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, Inherited = true, AllowMultiple = true)]
    public class Group9AuthorizeAttribute : FilterAttribute, IAuthorizationFilter
    {
        [Group9Authorize]
        public void OnAuthorization(AuthorizationContext filterContext)
        {

            try
            {
                G9_Service sv = new G9_Service();
                var userType = sv.getLoaiTaiKhoanByUserName(HttpContext.Current.User.Identity.Name);
                bool flag = false;
                var listPer = sv.getListPermissionByRole(userType.MaLoaiTK);
                String textAction = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName + "_" + filterContext.ActionDescriptor.ActionName;
                foreach (var cur in listPer)
                {
                    if (textAction == cur.ControllerName)
                    {
                        flag = true;
                        break;
                    }
                }
                if (!flag)
                    filterContext.Result = new RedirectResult("../Home/Warning");
            }
            catch
            {
                filterContext.Result = new RedirectResult("../Home/Warning");
            }
        }
    }

}