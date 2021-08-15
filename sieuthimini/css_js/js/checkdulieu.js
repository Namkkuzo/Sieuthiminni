

function Checkdn() {
    var tendn = document.getElementById("tdn").value.trim();
    var pass = document.getElementById("mk").value.trim();
    if (tendn == "" ) {
        alert("nhập tên");
        return false;
    }
    if (pass == "") {
        alert("nhập pass");
        return false;
    }
    return true;
}
function kiemtradangki() {
    var ten = document.getElementById("txtten");
    var sdt = document.getElementById("txtsdt");
    var mk1 = document.getElementById("txtmk1");
    var mk2 = document.getElementById("txtmk2");
    if (ten.value.trim() == "") {
        ten.focus();
        document.getElementById("baoloiten").innerHTML = "*";
        return false;
    } else if (sdt.value.trim() == "") {
        document.getElementById("baoloiten").innerHTML = "";
        sdt.focus();
        document.getElementById("baoloisdt").innerHTML = "*";
        return false;
    } else if (mk1.value.trim() == "") {
        document.getElementById("baoloiten").innerHTML = "";
        document.getElementById("baoloisdt").innerHTML = "";
        mk1.focus();
        document.getElementById("baoloimk1").innerHTML = "*";
        return false;
    } else if (mk2.value.trim() != mk1.value.trim()) {
        document.getElementById("baoloiten").innerHTML = "";
        document.getElementById("baoloimk1").innerHTML = "";
        document.getElementById("baoloisdt").innerHTML = "";
        mk2.focus();
        document.getElementById("baoloimk2").innerHTML = "*";
        return false;
    } else {
        document.getElementById("baoloimk2").innerHTML = "";
        document.getElementById("baoloiten").innerHTML = "";
        document.getElementById("baoloimk1").innerHTML = "";
        document.getElementById("baoloisdt").innerHTML = "";
    }

    return true;
}
function checksp() {
    var a = true;
    var loiten = document.getElementById("baoloiten");
    var loigia = document.getElementById("baoloigia");
    var loithongso = document.getElementById("baoloithongso");
    var baoloimota = document.getElementById("baoloimota") ;
    var baoloianh = document.getElementById("baoloianh");
    var thongso = CKEDITOR.instances.thongsosp.getData();
    var mota = CKEDITOR.instances.motasp.getData();
    var ten = document.getElementsByClassName("inputsp_nam")[0].value;
    var gia = document.getElementById("giasp").value;
    const anh1 = document.getElementsByClassName("anh_nam")[0].src;
    const anh2 = document.getElementsByClassName("anh_nam")[1].src;
    const anh3 = document.getElementsByClassName("anh_nam")[2].src;
    const anh4 = document.getElementsByClassName("anh_nam")[3].src;
    if (thongso.trim() == "") {
        loithongso.innerHTML= "Không được để trống";
        a = false;
    }
    if (mota.trim() == "") {
        baoloimota.innerHTML = "Không được để trống";
        a = false;
    }
    if (ten.trim() == "") {
        loiten.innerHTML = "Không được để trống";
        a = false;
    }
    if (gia.trim() == "") {
        loigia.innerHTML = "Không được để trống";
        a = false;
    }
    if (anh1 == "" && anh2 == "" && anh3 ==  ""&& anh4 == "") {
        baoloianh.innerHTML = "Đặt tối thiểu 1 ảnh";
        a = false;
    }
    return a;
}