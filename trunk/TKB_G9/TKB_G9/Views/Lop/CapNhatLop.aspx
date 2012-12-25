<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Cập nhật lớp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý
            </a>/ <a href="<%=Url.Content("~/Lop/CapNhatLop") %>">Cập nhật lớp</a> </span>
        <br />
        <p class="detailtitle">
            CẬP NHẬT LỚP
        </p>
        <p class="itemsummary" style="line-height: 200%">
        </p>
        <div class="lastnewsbox">
            <div class="GirdDiv">
       <% using (Html.BeginForm("CapNhatLopPost", "Lop", FormMethod.Post))
          { %>
          <input type="hidden" id="txtMaLop" name="txtMaLop" value="<%= ViewData["MaLop"]%>" />
                <div>
                    <div class="ListHeader">
                        Tên lớp:
                    </div>
                        <input type="text" id="txtTenLop" name="txtTenLop" value="<%= ViewData["TenLop"]%>" />
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Khối:
                    </div>
                    <div>
                        <select name="cbKhoi" >
                            <%= ViewData["Khoi"]%>
                        </select>
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Ca học
                    </div>
                    <div>
                        <select name="cbCaHoc" >
                            <%= ViewData["CaHoc"]%>
                        </select>
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Sỉ số
                    </div>
                    <div id="LoaiNguoiDung">
                        <input type="text" id="txtSiSo" name="txtSiSo" value="<%= ViewData["SiSo"]%>" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Ghi chú
                    </div>
                    <div id="NhomToiDa">
                        <input type="text" id="txtGhiChu" name="txtGhiChu" value="<%= ViewData["GhiChu"]%>" />
                    </div>
                </div>
                <input type="submit" class="button" value="Cập nhật" style="margin-top:15px" />
                <div class="clear">
                </div>
<% }%>
            </div>
        </div>
    </div>
    <div class="detailrow">
        <p class="pauthor">
        </p>
    </div>

</asp:Content>
