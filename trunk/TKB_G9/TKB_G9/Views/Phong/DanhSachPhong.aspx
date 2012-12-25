<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DanhSachPhong
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
<span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/Phong/DanhSachPhong") %>">Danh sách Phòng</a>
            </span>
            <br />
<p class="detailtitle">
                <span>DANH SÁCH Phòng</span>
</p>

<p class="itemsummary" style="line-height: 200%">
<a href="<%=Url.Content("~/Phong/ThemPhong") %>"><input type="button" class="button" value="Thêm" /></a>

    <%=  ViewData["DSPhong"]%>

</p>
</div>  
</asp:Content>
