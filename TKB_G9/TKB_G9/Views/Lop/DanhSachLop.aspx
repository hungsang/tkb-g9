<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Danh sách lớp
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="detailrow">
        <span class="navheader"><a href="#">Quản lý</a> / <a href="<%=Url.Content("~/Lop/DanhSachLop") %>">
            Danh sách lớp</a> </span>
        <br />
        <table width="100%" border="0" style=" border:0px;" >
            <tr style=" border:0px;">
                <td style="width: 40%; padding:0px; border:0px;">
                    <p class="detailtitle">
                        <span>Danh Sách Lớp</span>
                    </p>
                </td>
                <td align="right" style="padding-right: 40px; border:0px;">
                    <a href="<%=Url.Content("~/Lop/ThemLop") %>">
                        <input type="button" class="button" value="Thêm lớp" />
                    </a>
                </td>
            </tr>
        </table>
        <p class="itemsummary" style="line-height: 200%">
            
            <%=  ViewData["DSLop"]%>
        </p>
    </div>
</asp:Content>
