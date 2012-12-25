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
            
            G9_Service sv = new G9_Service();
            var user = sv.getTaiKhoanByUserName(HttpContext.Current.User.Identity.Name);
            //Kiem tra quyen Giao Vien
            if (user==null || !(user.MaTaiKhoan == 2))       // Dựa trên role có sẵn trong webconfig or dựa name method để phân quyền
                filterContext.Result = new RedirectResult("../Home/Index");
        }
    }

}