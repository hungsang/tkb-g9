function Show(id) {
    $(".divTKB").hide();
    $("#" + id).show();
}

function LoadChiTietTKBInfo(maChiTiet, thu, tiet) {

    var info = $("#hdn" + maChiTiet).val();
    if (info != null) {
        var arr = info.split('|');
        //        var thu = arr[0];
        //        var tiet = arr[1];
        var maMH = arr[2];
        var tenMH = arr[3];
        var maGV = arr[4];
        var tenGV = arr[5];
        var maPhong = arr[6];
        var tenPhong = arr[7];
        var strResult = "";
        strResult += "<div>Thứ: " + thu + " - Tiết: " + tiet + "</div>";
        strResult += "<div>Môn học: " + tenMH + "</div>";
        strResult += "<div>Giáo viên: " + tenGV + "</div>";
        strResult += "<div>Phòng: " + (maPhong == null ? "Chưa có" : tenPhong) + "</div>";
        strResult += "<div><input type='submit' value='Thay đổi' onclick='LoadEditTKB(" + maChiTiet + "," + thu + "," + tiet + "," + maMH + "," + maGV + "," + maPhong + ")'/></div>";
        $("#divInfo").html(strResult);
        return true;
    } else {
        NewTKB(maChiTiet, thu, tiet);
    }
    return false;
}

function LoadEditTKB(maChiTiet, thu, tiet, maMH, maGV, phong) {
    LoadDanhSachMonHoc(maMH);
    LoadDanhSachPhong(phong);
    var strResult = "";
    strResult += "<div>Thứ: " + thu + "</div>";
    strResult += "<div>Tiết: " + tiet + "</div>";
    strResult += "<div>Môn học:</div>";
    strResult += "<div id='dsMonHoc'></div>";
    strResult += "<div>Giáo viên:</div>";
    strResult += "<div id='dsGiaoVien'></div>";
    strResult += "<div>Phòng:</div>";
    strResult += "<div id='dsPhong'></div>";
    strResult += "<input type='hidden' id='hdnMaGV' value='" + maGV + "'/>";
    strResult += "<input type='submit' value='Lưu' onclick='UpdateTKB(" + maChiTiet + ")'/>";
    $("#divInfo").html(strResult);
}

function UpdateTKB(maChiTiet) {
    var maMH = $("#cbMonHoc").val();
    var maGV = $("#cbGiaoVien").val();
    var phong = $("#cbPhong").val();
    var handlerPage = "/TKB.ashx";
    var param = { method: "updateTKB", maChiTiet: maChiTiet, maMonHoc: maMH, maGiaoVien: maGV, maPhong: phong };

    var isFailed = false;
    var msgText = "";
    var xhr = $.ajax({
        type: "GET",
        url: handlerPage,
        data: param,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 5000,
        cache: false,
        success: function (result) {
            if (result != null) {
                window.location = "Sua?lop=" + getURLParameter("lop") + "&namHoc=" + getURLParameter("namHoc");
            } else {
                alert("Không lưu được. Vui lòng thử lại sau.");
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('#hdnErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }
}

function LoadDanhSachGiaoVien() {
    var maMH = $("#cbMonHoc").val();
    var maGV = $("#hdnMaGV").val();
    var handlerPage = "/TKB.ashx";
    var param = { method: "getDanhSachGiaoVien", maMonHoc: maMH };

    var isFailed = false;
    var msgText = "";
    var xhr = $.ajax({
        type: "GET",
        url: handlerPage,
        data: param,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 5000,
        cache: false,
        success: function (result) {
            if (result != null) {
                var strResult = "";
                strResult += "<select id='cbGiaoVien' name='cbGiaoVien'>";
                for (var i = 0; i < result.length; i++) {
                    strResult += "<option value='" + result[i].MaGiaoVien + "' " + (maGV == result[i].MaGiaoVien ? "selected" : "") + ">" + result[i].TenGiaoVien + "</option>";
                }
                strResult += "</select>";
                $("#dsGiaoVien").html(strResult);
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('#hdnErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }
}

function LoadDanhSachMonHoc(maMH) {
    var handlerPage = "/TKB.ashx";
    var param = { method: "getDanhSachMonHoc" };

    var isFailed = false;
    var msgText = "";
    var xhr = $.ajax({
        type: "GET",
        url: handlerPage,
        data: param,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 5000,
        cache: false,
        success: function (result) {
            if (result != null) {
                var strResult = "";
                strResult += "<select id='cbMonHoc' name='cbMonHoc' onchange='LoadDanhSachGiaoVien()'>";
                for (var i = 0; i < result.length; i++) {
                    strResult += "<option value='" + result[i].MaMonHoc + "' " + (maMH == result[i].MaMonHoc ? "selected" : "") + ">" + result[i].TenMonHoc + "</option>";
                }
                strResult += "</select>";
                $("#dsMonHoc").html(strResult);
                LoadDanhSachGiaoVien();
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('#hdnErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }

}

function LoadDanhSachPhong(phong) {
    var handlerPage = "/TKB.ashx";
    var param = { method: "getDanhSachPhong" };

    var isFailed = false;
    var msgText = "";
    var xhr = $.ajax({
        type: "GET",
        url: handlerPage,
        data: param,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 5000,
        cache: false,
        success: function (result) {
            if (result != null) {
                var strResult = "";
                strResult += "<select id='cbPhong' name='cbPhong'>";
                for (var i = 0; i < result.length; i++) {
                    strResult += "<option value='" + result[i].MaPhong + "' " + (phong == result[i].MaPhong ? "selected" : "") + ">" + result[i].TenPhong + "</option>";
                }
                strResult += "</select>";
                $("#dsPhong").html(strResult);
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('#hdnErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }

}

function NewTKB(maTKB, thu, tiet) {

    LoadDanhSachPhong(0);
    LoadDanhSachMonHoc(0);
    var strResult = "";
    strResult += "<div>Thứ: " + thu + "</div>";
    strResult += "<div>Tiết: " + tiet + "</div>";
    strResult += "<div>Môn học:</div>";
    strResult += "<div id='dsMonHoc'></div>";
    strResult += "<div>Giáo viên:</div>";
    strResult += "<div id='dsGiaoVien'></div>";
    strResult += "<div>Phòng:</div>";
    strResult += "<div id='dsPhong'></div>";
    strResult += "<input type='submit' value='Lưu' onclick='SaveTKB(" + maTKB + "," + thu + "," + tiet + ")'/>";
    $("#divInfo").html(strResult);
}

function CreateTKB(lop, namHoc) {
    var handlerPage = "/TKB.ashx";
    var param = { method: "createTKB", lop: lop, namHoc: namHoc };

    var isFailed = false;
    var msgText = "";
    var xhr = $.ajax({
        type: "GET",
        url: handlerPage,
        data: param,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 5000,
        cache: false,
        success: function (result) {
            if (result == null) {
                alert("Không tạo được. Vui lòng thử lại sau.");
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('#hdnErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }
}

function SaveTKB(maTKB, thu, tiet) {
    var maMH = $("#cbMonHoc").val();
    var maGV = $("#cbGiaoVien").val();
    var phong = $("#cbPhong").val();
    var handlerPage = "/TKB.ashx";
    var param = { method: "saveTKB", maTKB: maTKB, thu: thu, tiet: tiet, maMonHoc: maMH, maGiaoVien: maGV, maPhong: phong };

    var isFailed = false;
    var msgText = "";
    var xhr = $.ajax({
        type: "GET",
        url: handlerPage,
        data: param,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 5000,
        cache: false,
        success: function (result) {
            if (result != null) {
                window.location = "Sua?lop=" + getURLParameter("lop") + "&namHoc=" + getURLParameter("namHoc");
            } else {
                alert("Không lưu được. Vui lòng thử lại sau.");
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('#hdnErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }
}

function getURLParameter(name) {
    return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [, ""])[1].replace(/\+/g, '%20')) || null;
}

