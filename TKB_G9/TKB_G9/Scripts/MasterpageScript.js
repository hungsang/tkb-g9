function checkLogin() {
    var user = document.getElementById("txtUser").value;
    var pwd = document.getElementById("txtPwd").value;
    $.post(pathServer + "Home/checkLogin?user=" + user + "&pwd=" + pwd, {}, function () {
//        if (result != "") {
//            //alert("Đăng nhập thành công");
//            //document.getElementById("frameLogin").innerHTML = "Xin chào " + result + ", <a onclick='Logout()'>Thoát</a>";
//        }
//        else {
//            alert("Đăng nhập thất bại");
//        }
    });
}
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
        checkLogin();
}