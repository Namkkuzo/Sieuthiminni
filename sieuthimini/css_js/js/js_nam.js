
function myFunction_master(x) {
    x.classList.toggle("change");
    var y = document.getElementById("danhmuc_master");
    y.classList.toggle("hihi_master");
}
function goto(page) {
    $.post("xuly.aspx",
        {
            "action": "goTo",
            "page": page
        },
        function (data) {
            console.log(data);
        }
    )
}
function dangxuat() {
    $.post("xuly.aspx",
        { "action": "dangxuat" },
        function (data, status) {
            if (data == 1) {
                location.replace("trangchu.aspx");
            }
        });
}
function timkiem() {
    var input = document.getElementById("timkiem_master");
    location.replace("timkiem.aspx?timkiem=" + document.getElementById("inputtimkiem_master").value);
}
function kiemtradangban(a, ma) {
    var input = document.getElementById("dangban" + ma);
    if (a) {
        input.checked = true;
        alert("ok");
    }

    else { input.checked = false; alert("ok2") }
}
function capnhatdangban(ma) {
    var input = document.getElementById("dangban" + ma);
    if (input.checked) {
        $.post("xuly.aspx",
            {
                "action": "dangban",
                "ma": ma,
                "trangthai": "true"
            },
            function (data, status) {
                //alert("Data: " + data + "\nStatus: " + status);
                if (data == 1) {
                    console.log("cập nhật bán sản phẩm mã: " + ma);
                }
                else location.replace("trangchu.aspx");
            });
    }
    else {
        $.post("xuly.aspx",
            {
                "action": "dangban",
                "ma": ma,
                "trangthai": "false"
            },
            function (data, status) {
                //alert("Data: " + data + "\nStatus: " + status);
                if (data == 1) {
                    console.log("cập nhật bán sản phẩm mã: " + ma);
                }
                else location.replace("trangchu.aspx");
            });
    }
}
function themgiohang(ma, gia) {
    $.post("xuly.aspx",
        {
            "action": "themgio",
            "ma": ma,
            "gia": gia
        },
        function (data, status) {
            if (data == "1") {
                dangxuat();
            }
                console.log(data);
        });
}
function doisoluong(stt, a) {
    var b = a.value;
    $.post("xuly.aspx",
        {
            "action": "doisoluong",
            "stt": stt,
            "value": b
        },
        function (data) {
            
        });
    if (a.value==0)
    $("#donhang_nam" + stt).slideUp();
}
function thanhtoan() {
    var a = document.getElementsByClassName("luachonthanhtoan_nam");
    var diachi = document.getElementsByClassName("txtdiachi_nam")[0].value;
    for (var i = 0; i < a.length; i++) {
        if (a[i].checked) {
            $.post("xuly.aspx",
                {
                    "action": "Thanhtoan",
                    "diachi":diachi
                },
                function (data) {
                    if (data == 1)
                        location.replace("Login.aspx");
                    //else console.log(data);
                });
        }
    }
    //alert("Xem chi tiết đơn hàng tại đơn hàng");
    location.reload();
}
function xacnhan() {
    var a = document.getElementsByClassName("chonxacnhan_nam");
    for (var i = 0; i < a.length; i++) {
        if (a[i].checked) {
            $.post("xuly.aspx",
                {
                    "action": "capnhatdonhang",
                    "madon": a[i].value,
                    "trangthai": 3
                },
                function (data) {
                    if (data == "1")
                        location.replace("Login.aspx");
                    if (data =="0")
                        location.reload();
                });
        }
    }
    location.reload();
}
function giaohang() {
    var a = document.getElementsByClassName("chongoihang_nam");
    for (var i = 0; i < a.length; i++) {
        if (a[i].checked) {
            $.post("xuly.aspx",
                {
                    "action": "capnhatdonhang",
                    "madon": a[i].value,
                    "trangthai": 4
                },
                function (data) {
                    if (data == "1")
                        location.replace("Login.aspx");
                    if (data == "0")
                        location.reload();
                });
        }
    }
}
function dagiao() {
    var a = document.getElementsByClassName("chondanggiao_nam");
    for (var i = 0; i < a.length; i++) {
        if (a[i].checked) {
            $.post("xuly.aspx",
                {
                    "action": "capnhatdonhang",
                    "madon": a[i].value,
                    "trangthai": 5
                },
                function (data) {
                    if (data == "1")
                        location.replace("Login.aspx");
                    if (data == "0")
                        location.reload();
                });
        }
    }
    location.reload();
}

function countDown() {
    var seconds = document.getElementById("ContentPlaceHolder1_timeout").innerHTML;
    console.log(seconds);
    if (seconds > 0) {
        document.getElementById("ContentPlaceHolder1_timeout").innerHTML = seconds - 1;
        $.post("xuly.aspx",
            {
                "action": "set_time_out",
                "time": seconds - 1
            });
        setTimeout("countDown()", 1000);
    }

}