function isLogin() {
    $.post(pathServer + "Home/Login", {}, function (result) {
        if (result != "") {
            document.getElementById("frameLogin").innerHTML = result;
        }
    });
}
function Logout() {
    $.post(pathServer + "Home/Logout", {}, function () {
        isLogin();
    });
}
function onKeyEnterPwd(e) {
    if (e.keyCode == 13)
        document.forms["frmDangNhap"].submit()
}