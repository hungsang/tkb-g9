<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Xem thởi khóa biểu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="detailrow">
        <span class="navheader"><a href="#">Giáo Viên</a> / <a href="<%=Url.Content("~/GiaoVien/XemThoiKhoaBieu") %>">
            Xem Thời Khóa Biểu</a>/ <a href="#">
                <%=User.Identity.Name%></a> </span>
        <br />
        <p class="detailtitle">
            <span>THỜI KHÓA BIỂU GIẢNG DẠY</span>
        </p>
        <div class="clear">
        </div>
        <p class="itemsummary" style="line-height: 200%">
        <%=  ViewData["TKBGV"]%>
           </p>
    </div>
</asp:Content>
