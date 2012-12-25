<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ThemLop
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="detailrow">
        <span class="navheader"><a href="#">Học sinh
            </a>/ <a href="<%=Url.Content("~/Lop/ThemLop") %>">Thêm lớp</a> </span>
        <br />
        <p class="detailtitle">
            THÊM LỚP
        </p>
        <p class="itemsummary" style="line-height: 200%">
        </p>
        <div class="lastnewsbox">
            <div class="GirdDiv">
            <%--<form id="frmThemLop" action="<%=Url.Content("~/Lop/ThemLopPost")%>" method="post">--%>
       <% using (Html.BeginForm("ThemLopPost", "Lop", FormMethod.Post))
          { %>
                <div>
                    <div class="ListHeader">
                        Tên lớp:
                    </div>
                        <input type="text" id="txtTenLop" name="txtTenLop" />
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Khối:
                    </div>
                    <div>
                        <select name="cbKhoi" >
                            <option id="Option1" value="10" >10</option>
                            <option id="Option2" value="11" >11</option>
                            <option id="Option3" value="12" >12</option>
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
                            <option id="Option4" value="Sáng" >Sáng</option>
                            <option id="Option5" value="Chiều" >Chiều</option>
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
                        <input type="text" id="txtSiSo" name="txtSiSo" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Ghi chú
                    </div>
                    <div id="NhomToiDa">
                        <input type="text" id="txtGhiChu" name="txtGhiChu" />
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
