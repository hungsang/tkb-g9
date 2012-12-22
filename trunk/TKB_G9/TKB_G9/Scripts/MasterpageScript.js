function checkLogin() {
    var user = document.getElementById("txtUser").value;
    var pwd = document.getElementById("txtPwd").value;
    $.post(pathServer + "Home/checkLogin?user=" + user + "&pwd=" + pwd, {}, function (result) {
        if (result != "") {
            //alert("Đăng nhập thành công");
            document.getElementById("frameLogin").innerHTML = "Xin chào " + result + ", <a onclick='Logout()'>Thoát</a>";
        }
        else {
            alert("Đăng nhập thất bại");
        }
    });
}
function isLogin() {
    $.post(pathServer + "Home/Login", {}, function (result) {
        if (result != "") {
            document.getElementById("frameLogin").innerHTML = result;
        }
        else {
            $.post(pathServer + "Home/getSession?queryStr=userLogin", {}, function (userName) {
                document.getElementById("frameLogin").innerHTML = "Xin chào " + userName + ", <a onclick='Logout()'>Thoát</a>";
            });
        }
    });
}
function Logout() {
    $.post(pathServer + "Home/Logout", {}, function (result) {
        isLogin();
    });
}
function onKeyEnterPwd(e) {
    if (e.keyCode == 13)
        checkLogin();
}