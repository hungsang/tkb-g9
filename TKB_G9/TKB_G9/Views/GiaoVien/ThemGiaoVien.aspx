<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Thêm Giáo Viên
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý
            </a>/ <a href="<%=Url.Content("~/GiaoVien/ThemGiaoVien") %>">Thêm giáo viên</a> </span>
        <br />
        <p class="detailtitle">
            THÊM GIÁO VIÊN
        </p>
        <p class="itemsummary" style="line-height: 200%">
        </p>
        <div class="lastnewsbox">
            <div class="GirdDiv">
            <%--<form id="frmThemLop" action="<%=Url.Content("~/Lop/ThemLopPost")%>" method="post">--%>
       <% using (Html.BeginForm("ThemGiaoVienPost", "GiaoVien", FormMethod.Post))
          { %>
                <div>
                    <div class="ListHeader">
                        Họ tên:
                    </div>
                        <input type="text" id="txtTenGiaoVien" name="txtTenGiaoVien" />
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Giới tính:
                    </div>
                    <div>
                        <select name="txtGioiTinh" >
                            <option id="Option1" value="Nam" >Nam</option>
                            <option id="Option2" value="Nữ" >Nữ</option>
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
                        <input type="text" id="txtDiaChi" name="txtDiaChi" />
                    </div>
                </div>
                <div class="clear">
                </div>
               
                <div>
                    <div class="ListHeader">
                        Điện thoại
                    </div>
                    <div id="NhomToiDa">
                        <input type="text" id="txtDienThoai" name="txtDienThoai" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Môn học:
                    </div>
                    <div id="Div1">
                        <select name="txtMonHoc" >
                            <%=  ViewData["DSMonHoc"]%>
                        </select>
                    </div>
                </div>
                <input type="submit" class="button" value="Thêm" style="margin-top:15px" />
                <div class="clear">
                </div>
                <%--</form>--%>
                
<% }%>
            </div>
        </div>
    </div>
    <div class="detailrow">
        <p class="pauthor">
        </p>
    </div>
</asp:Content>
