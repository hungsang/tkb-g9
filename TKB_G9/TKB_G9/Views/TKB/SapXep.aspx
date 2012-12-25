<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="detailrow">
        <span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/TKB/SapXep") %>">
            Sắp xếp TKB</a> </span>
        <br />
        <p class="detailtitle">
            <span>SẮP XẾP THỜI KHÓA BIỂU</span>
        </p>
        <p class="itemsummary" style="line-height: 200%">
            <%= ViewData["menuLop"] %>
            <% using (Html.BeginForm("SapXep", "TKB", FormMethod.Post))
               { %>
            <%= ViewData["NamHoc"]%>
            <%= ViewData["dsLop"]%>
            <% } %>
            <%=ViewData["TKB"] %>
        </p>
    </div>
</asp:Content>
