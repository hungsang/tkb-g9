function Show(id) {
    $(".divTKB").hide();
    $("#" + id).show();
}

function LoadGiaoVien(maChiTiet) {
    var handlerPage = "/TKB.ashx";
    var param = { method: "getGiaoVien", maChiTietTKB: maChiTiet };

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
                alert(result.TenGiaoVien);
            }
        },
        error: function () {
            isFailed = true;
            msgText = "<p>Cannot get data from server!</p>" + msgText;
            $('divErrorMsg').html(msgText);
        }
    });
    if (isFailed) {
        xhr.abort();
    }
    return false;
}