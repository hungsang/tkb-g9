<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master"
    Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Xem thởi khóa biểu giáo viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="detailrow">
        <span class="navheader"><a href="#">Giáo Viên</a> / <a href="<%=Url.Content("~/GiaoVien/XemThoiKhoaBieuGiaoVien") %>">
            Xem Thời Khóa Biểu</a></span>
        <br />
        <p class="detailtitle">
            <span>THỜI KHÓA BIỂU GIẢNG DẠY</span>
        </p>
        <p>
            <%=ViewData["strCbbGiaoVien"]%>
        </p>
        <div class="clear">
        </div>
        <p class="itemsummary" style="line-height: 200%" id="frameTKB">
        </p>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            var idx = document.getElementById("cbbGiaoVien").value;
            var pathServer = '<%=Url.Content("~")%>';
            $.post(pathServer + 'GiaoVien/changeGiaoVienCbb?giaovien=' + idx, {}, function (data) {
                if (data != null) {
                    document.getElementById("frameTKB").innerHTML = data;
                }
            });
            $('#cbbGiaoVien').change(function () {
                idx = this.value;
                $.post(pathServer + 'GiaoVien/changeGiaoVienCbb?giaovien=' + idx, {}, function (data) {
                    if (data != null) {
                        document.getElementById("frameTKB").innerHTML = data;
                    }
                });
            });
        });
    </script>
</asp:Content>
