<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CapNhatPhong
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý
            </a>/ <a href="<%=Url.Content("~/Phong/CapNhatPhong") %>">Cập nhật phòng</a> </span>
        <br />
        <p class="detailtitle">
            CẬP NHẬT PHÒNG
        </p>
        <p class="itemsummary" style="line-height: 200%">
        </p>
        <div class="lastnewsbox">
            <div class="GirdDiv">
       <% using (Html.BeginForm("CapNhatPhongPost", "Phong", FormMethod.Post))
          { %>
          <input type="hidden" id="txtMaPhong" name="txtMaPhong" value="<%= ViewData["MaPhong"]%>" />
                <div>
                    <div class="ListHeader">
                        Tên phòng:
                    </div>
                        <input type="text" id="txtTenPhong" name="txtTenPhong" value="<%= ViewData["TenPhong"]%>" />
                </div>
                <div class="clear">
                </div>
                <div>
                    
                <div>
                    <div class="ListHeader">
                        Tình trạng:
                    </div>
                    <div>
                        <input type="text" id="txtDiaChi" name="txtDiaChi" value="<%= ViewData["TinhTrang"]%>" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Sức chứa:
                    </div>
                    <div id="LoaiNguoiDung">
                        <input type="text" id="txtDienThoai" name="txtDienThoai" value="<%= ViewData["SucChua"]%>" />
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
