<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Cập Nhật Giáo Viên
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý
            </a>/ <a href="<%=Url.Content("~/GiaoVien/CapNhatGiaoVien") %>">Cập nhật giáo viên</a> </span>
        <br />
        <p class="detailtitle">
            CẬP NHẬT GIÁO VIÊN
        </p>
        <p class="itemsummary" style="line-height: 200%">
        </p>
        <div class="lastnewsbox">
            <div class="GirdDiv">
       <% using (Html.BeginForm("CapNhatGiaoVienPost", "GiaoVien", FormMethod.Post))
          { %>
          <input type="hidden" id="txtMaGiaoVien" name="txtMaGiaoVien" value="<%= ViewData["MaGiaoVien"]%>" />
                <div>
                    <div class="ListHeader">
                        Tên lớp:
                    </div>
                        <input type="text" id="txtTenGiaoVien" name="txtTenGiaoVien" value="<%= ViewData["TenGiaoVien"]%>" />
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Giới tính:
                    </div>
                    <div>
                        <select name="txtGioiTinh" >
                            <%= ViewData["GioiTinh"]%>
                        </select>
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Địa chỉ:
                    </div>
                    <div>
                        <input type="text" id="txtDiaChi" name="txtDiaChi" value="<%= ViewData["DiaChi"]%>" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Điện thoại:
                    </div>
                    <div id="LoaiNguoiDung">
                        <input type="text" id="txtDienThoai" name="txtDienThoai" value="<%= ViewData["DienThoai"]%>" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Email:
                    </div>
                    <div id="NhomToiDa">
                        <input type="text" id="txtEmail" name="txtEmail" value="<%= ViewData["Email"]%>" />
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
