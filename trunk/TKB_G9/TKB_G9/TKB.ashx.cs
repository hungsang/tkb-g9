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
                case "getDanhSachMonHoc":
                    GetDanhSachMonHoc(context);
                    break;
                case "getDanhSachGiaoVien":
                    GetDanhSachGiaoVien(context);
                    break;
                case "getDanhSachPhong":
                    GetDanhSachPhong(context);
                    break;
                case "updateTKB":
                    UpdateTKB(context);
                    break;
                case "createTKB":
                    CreateTKB(context);
                    break;
                case "saveTKB":
                    SaveTKB(context);
                    break;
                case "checkUpdateTKB":
                    CheckUpdateTKB(context);
                    break;
                case "xoaChiTietTKB":
                    DeleteChiTietTKB(context);
                    break;
                case "checkSaveTKB":
                    CheckSaveTKB(context);
                    break;
            }
        }

        private void DeleteChiTietTKB(HttpContext context)
        {
            try
            {
                int maChiTiet = Int32.Parse(context.Request.QueryString["maChiTiet"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                bool success = sv.DeleteChiTietTKB(maChiTiet);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                if (success)
                {
                    string result = serializer.Serialize(success);
                    context.Response.Write(result);
                }
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }

        public void GetDanhSachMonHoc(HttpContext context)
        {
            try
            {
                G9Service.G9_Service sv = new G9Service.G9_Service();
                List<MonHoc> lstMonHoc = sv.GetDanhSachMonHoc().ToList();
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string result = serializer.Serialize(lstMonHoc);
                context.Response.Write(result);
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }

        public void GetDanhSachPhong(HttpContext context)
        {
            try
            {
                G9Service.G9_Service sv = new G9Service.G9_Service();
                List<Phong> lstPhong = sv.GetDanhSachPhong().ToList();
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string result = serializer.Serialize(lstPhong);
                context.Response.Write(result);
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }


        public void GetDanhSachGiaoVien(HttpContext context)
        {
            try
            {
                int maMonHoc = Int32.Parse(context.Request.QueryString["maMonHoc"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                List<GiaoVien> lstGiaoVien = sv.GetDanhSachGiaoVienTheoMonHoc(maMonHoc).ToList();
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                string result = serializer.Serialize(lstGiaoVien);
                context.Response.Write(result);
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }
        public void UpdateTKB(HttpContext context)
        {
            try
            {
                int maChiTiet = Int32.Parse(context.Request.QueryString["maChiTiet"]);
                int maMonHoc = Int32.Parse(context.Request.QueryString["maMonHoc"]);
                int maGiaoVien = Int32.Parse(context.Request.QueryString["maGiaoVien"]);
                int maPhong = Int32.Parse(context.Request.QueryString["maPhong"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                bool success = sv.UpdateTKB(maChiTiet, maMonHoc, maGiaoVien, maPhong);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                if (success)
                {
                    string result = serializer.Serialize(success);
                    context.Response.Write(result);
                }
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }

        public void CreateTKB(HttpContext context)
        {
            try
            {
                int lop = Int32.Parse(context.Request.QueryString["lop"]);
                string namHoc = context.Request.QueryString["namHoc"];
                G9Service.G9_Service sv = new G9Service.G9_Service();
                bool success = sv.NewTKB(lop, namHoc);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                if (success)
                {
                    string result = serializer.Serialize(success);
                    context.Response.Write(result);
                }
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }

        public void SaveTKB(HttpContext context)
        {
            try
            {
                int maTKB = Int32.Parse(context.Request.QueryString["maTKB"]);
                int maMonHoc = Int32.Parse(context.Request.QueryString["maMonHoc"]);
                int maGiaoVien = Int32.Parse(context.Request.QueryString["maGiaoVien"]);
                int maPhong = Int32.Parse(context.Request.QueryString["maPhong"]);
                int thu = Int32.Parse(context.Request.QueryString["thu"]);
                int tiet = Int32.Parse(context.Request.QueryString["tiet"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                bool success = sv.SaveChiTietTKB(maTKB,thu,tiet, maMonHoc, maGiaoVien, maPhong);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                if (success)
                {
                    string result = serializer.Serialize(success);
                    context.Response.Write(result);
                }
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }

        public void CheckUpdateTKB(HttpContext context)
        {
            try
            {
                int maChiTiet = Int32.Parse(context.Request.QueryString["maChiTiet"]);
                int maMonHoc = Int32.Parse(context.Request.QueryString["maMonHoc"]);
                int maGiaoVien = Int32.Parse(context.Request.QueryString["maGiaoVien"]);
                int maPhong = Int32.Parse(context.Request.QueryString["maPhong"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                string success = sv.CheckUpdateTKB(maChiTiet, maMonHoc, maGiaoVien, maPhong);
                JavaScriptSerializer serializer = new JavaScriptSerializer();

                string result = serializer.Serialize(success);
                context.Response.Write(result);
            }
            catch (Exception ex) { context.Response.Write(ex.Message); }
        }

        public void CheckSaveTKB(HttpContext context)
        {
            try
            {
                int maTKB = Int32.Parse(context.Request.QueryString["maTKB"]);
                int thu = Int32.Parse(context.Request.QueryString["thu"]);
                int tiet = Int32.Parse(context.Request.QueryString["tiet"]);
                int maMonHoc = Int32.Parse(context.Request.QueryString["maMonHoc"]);
                int maGiaoVien = Int32.Parse(context.Request.QueryString["maGiaoVien"]);
                int maPhong = Int32.Parse(context.Request.QueryString["maPhong"]);
                G9Service.G9_Service sv = new G9Service.G9_Service();
                string success = sv.CheckSaveTKB(maTKB, thu-2, tiet-1, maMonHoc, maGiaoVien, maPhong);
                JavaScriptSerializer serializer = new JavaScriptSerializer();

                string result = serializer.Serialize(success);
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