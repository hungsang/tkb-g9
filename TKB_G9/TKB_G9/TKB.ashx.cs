using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using TKB_G9.G9Service;

namespace TKB_G9
{
    /// <summary>
    /// Summary description for TKB
    /// </summary>
    public class TKB : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json; charset=utf-8";
            string method = context.Request.QueryString["method"];
            switch (method)
            {
                case "getGiaoVien":
                    GetGiaoVien(context);
                    break;
                
            }
        }
        public void GetGiaoVien(HttpContext context)
        {
            try
            {
                int maChiTiet = Int32.Parse(context.Request.QueryString["maChiTietTKB"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                GiaoVien gv = sv.GetGiaoVienFromTKB(maChiTiet);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string result = serializer.Serialize(gv);
                context.Response.Write(result);
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}