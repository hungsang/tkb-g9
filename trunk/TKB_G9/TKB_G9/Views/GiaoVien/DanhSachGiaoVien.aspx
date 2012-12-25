<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Danh sách giáo viên
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
<span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/GiaoVien/DanhSachGiaoVien") %>">Danh sách giáo viên</a>
            </span>
            <br />
<p class="detailtitle">
                <span>DANH SÁCH GIÁO VIÊN</span>
</p>

<p class="itemsummary" style="line-height: 200%">
<a href="<%=Url.Content("~/GiaoVien/ThemGiaoVien") %>"><input type="button" class="button" value="Thêm" /></a>

    <%=  ViewData["DSGiaoVien"]%>

</p>
</div>  
</asp:Content>
