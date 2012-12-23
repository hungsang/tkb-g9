<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/masterpage.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>
<%--maincontent--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="detailrow">
			<span class="navheader"><a href="<%=Url.Content("~/Home/Index") %>">Trang chủ</a>
            </span>
            <br />
			<p class="detailtitle">
				QUI ĐỊNH SỬ DỤNG WEBSITE MÔN HỌC (MOODLE)
			</p>
			
			<p class="itemsummary" style="line-height: 200%">
- Sinh viên phải bảo vệ tài khoản của mình, phải chịu hoàn toàn trách nhiệm nếu tài khoản bị người khác lợi dụng với mục đích xấu (phải đặt mật khẩu an toàn và không cung cấp cho bất kỳ ai).
<br />- Chỉ sử dụng với mục đích học tập, không đưa nội dung không liên quan đến môn học lên website này.
<br />- Khi thảo luận trên các diễn đàn phải sử dụng lời lẽ lịch sự, tôn trọng Thầy Cô và bạn bè, không tuyên truyền nội dung xấu, thô tục, có tính chất làm tổn thương người khác.
<br />- Khai báo thông tin cá nhân phải chính xác, không dùng bí danh, họ tên tiếng Anh (trừ các bạn nước ngoài).
<br />- Thực hiện đầy đủ các qui định do Giáo viên đưa ra đối với từng môn học.


			</p>
		</div>   
		<div class="detailrow">
			<p class="pauthor">Quản trị hệ thống.  </p>
		</div>
</asp:Content>
