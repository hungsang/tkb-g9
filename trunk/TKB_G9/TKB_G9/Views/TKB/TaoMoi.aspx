<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/tkbStyle.css")%>" />
    <div class="detailrow">
        <span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/TKB/TaoMoi") %>">
            Tạo mới TKB</a> </span>
        <br />
        <p class="detailtitle">
            <span>TẠO MỚI THỜI KHÓA BIỂU LỚP
                <%= ViewData["TenLop"]%></span>
        </p>
        <div id="divInfo">
        </div>
        <p class="itemsummary" style="line-height: 200%">
            <% using (Html.BeginForm("TaoMoi", "TKB", FormMethod.Post))
               { %>
            <%= ViewData["TKB"]%>
            <% } %>
        </p>
    </div>
    <input type="hidden" id="hdnErrorMsg" />
</asp:Content>
