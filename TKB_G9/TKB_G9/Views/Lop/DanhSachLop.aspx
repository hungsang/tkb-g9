<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Danh sách lớp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
<span class="navheader"><a href="#">Học sinh</a> / <a href="<%=Url.Content("~/Lop/DanhSachLop") %>">Danh sách lớp</a>
            </span>
            <br />
<p class="detailtitle">
                <span>DANH SÁCH LỚP</span>
</p>

<p class="itemsummary" style="line-height: 200%">


    <%=  ViewData["DSLop"]%>

</p>
</div>  
</asp:Content>
