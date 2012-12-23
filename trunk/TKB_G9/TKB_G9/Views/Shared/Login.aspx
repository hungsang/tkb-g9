<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <div class="contentbordercol">
        <form id="frmDangNhap" action="../Home/Index.aspx">
        <h3 style="margin-bottom: 8px;">
            Đăng nhập</h3>
        Tài khoản:
        <br>
        <input type="text" maxlength="50" id="txtUser" class="bordercolumninput">
        <br>
        Mật khẩu:
        <br>
        <input type="password" maxlength="50" id="txtPwd" class="bordercolumninput" onkeypress="onKeyEnterPwd(event)"/>
        <br>
        <p>
            <input type="submit" value="Đăng nhập" id="" class="btnsubmit" />
        </p>
        </form>
    </div>
</body>
</html>
