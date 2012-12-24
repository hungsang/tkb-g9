<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/TKB/SapXep") %>">
            Sắp xếp TKB</a> </span>
        <br />
        <p class="detailtitle">
            <span>SỬA THỜI KHÓA BIỂU LỚP <%=Request.QueryString["lop"] %></span>
        </p>
        <p class="itemsummary" style="line-height: 200%">
            <% using (Html.BeginForm("SapXep", "TKB", FormMethod.Post)) { %>
            <%= ViewData["TKB"]%>
            <% } %>
        </p>
    </div>
</asp:Content>
