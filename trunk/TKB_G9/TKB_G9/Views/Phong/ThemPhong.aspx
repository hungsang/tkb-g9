<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ThemPhong
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
        <span class="navheader"><a href="#">Quản lý
            </a>/ <a href="<%=Url.Content("~/Phong/ThemPhong") %>">Thêm Phòng</a> </span>
        <br />
        <p class="detailtitle">
            THÊM Phòng
        </p>
        <p class="itemsummary" style="line-height: 200%">
        </p>
        <div class="lastnewsbox">
            <div class="GirdDiv">
            <%--<form id="frmThemLop" action="<%=Url.Content("~/Lop/ThemLopPost")%>" method="post">--%>
       <% using (Html.BeginForm("ThemPhongPost", "Phong", FormMethod.Post))
          { %>
                <div>
                    <div class="ListHeader">
                        Tên phòng:
                    </div>
                        <input type="text" id="txtTenPhong" name="txtTenPhong" />
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Tình trạng:
                    </div>
                    <div>
                        <input type="text" id="Text1" name="txtTinhTrang" />
                    </div>
                </div>
                <div class="clear">
                </div>
                <div>
                    <div class="ListHeader">
                        Sức chứa:
                    </div>
                    <div>
                        <input type="text" id="txtDiaChi" name="txtSucChua" />
                    </div>
                </div>
                <div class="clear">
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
