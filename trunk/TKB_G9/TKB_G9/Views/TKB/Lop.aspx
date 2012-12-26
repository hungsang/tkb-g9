<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Xem TKB theo lớp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/TKB/Lop") %>">
            Xem Thời Khóa Biểu</a>/ <a href="#">
                <%=User.Identity.Name%></a> </span>
        <br />
        <p class="detailtitle">
            <span>THỜI KHÓA BIỂU NĂM <%= ViewData["Nam"]%></span>
        </p>
        <div class="clear">
        </div>
        <p class="itemsummary" style="line-height: 200%">
            <% using (Html.BeginForm("Lop", "TKB", FormMethod.Get))
               { %>
            <%= ViewData["NamHoc"]%>
            <input type="submit" class="button" value="Xem" />
            <% } %>
            <%=ViewData["TKB"] %>
        </p>
    </div>
</asp:Content>
