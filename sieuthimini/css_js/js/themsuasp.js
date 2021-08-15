CKEDITOR.replace('motasp');
CKEDITOR.replace('thongsosp');
// xử lý khung nhập ảnh 1
const img = document.getElementsByClassName("anh_nam")[0];
const defaultbtn = document.getElementsByClassName("default_btn_nam")[0];
const cancelbtn = document.getElementsByClassName("cancel_btn_nam")[0];
const checknull = document.getElementsByClassName("checknull")[0];
function defaultbtnactive() {
    defaultbtn.click();
}
defaultbtn.addEventListener("change", function () {
    const file = this.files[0];

    if (file) {
        const reader = new FileReader();
        reader.onload = function () {
            const result = reader.result;
            img.src = result;
            checknull.value = "ok";
        }
        
        reader.readAsDataURL(file);
    }
    
});
cancelbtn.addEventListener("click", function () {
            img.src = "";
            checknull.value = "null";
        });
// xử lý khung nhập ảnh 2
const img1 = document.getElementsByClassName("anh_nam")[1];
const defaultbtn1 = document.getElementsByClassName("default_btn_nam")[1];
const cancelbtn1 = document.getElementsByClassName("cancel_btn_nam")[1];
const checknull1 = document.getElementsByClassName("checknull")[1];
function defaultbtnactive1() {
    defaultbtn1.click();
}
defaultbtn1.addEventListener("change", function () {
    const file = this.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function () {
            const result = reader.result;
            img1.src = result;
            checknull1.value = "ok";
        }
        
        reader.readAsDataURL(file);
    }
    
});
cancelbtn1.addEventListener("click", function () {
            img1.src = "";
            checknull1.value = "null";
        });
// xử lý khung nhập ảnh 3
const img2 = document.getElementsByClassName("anh_nam")[2];
const defaultbtn2 = document.getElementsByClassName("default_btn_nam")[2];
const cancelbtn2 = document.getElementsByClassName("cancel_btn_nam")[2];
const checknull2 = document.getElementsByClassName("checknull")[2];
function defaultbtnactive2() {
    defaultbtn2.click();
}
defaultbtn2.addEventListener("change", function () {
    const file = this.files[0];

    if (file) {
        const reader = new FileReader();
        reader.onload = function () {
            const result = reader.result;
            img2.src = result;
            checknull2.value = "ok";
        }
        
        reader.readAsDataURL(file);
    }
    
});
cancelbtn2.addEventListener("click", function () {
            img2.src = "";
            checknull2.value = "null";
        });
// xử lý khung nhập ảnh 4
const img3 = document.getElementsByClassName("anh_nam")[3];
const defaultbtn3 = document.getElementsByClassName("default_btn_nam")[3];
const cancelbtn3 = document.getElementsByClassName("cancel_btn_nam")[3];
const checknull3 = document.getElementsByClassName("checknull")[3];
function defaultbtnactive3() {
    defaultbtn3.click();
}
defaultbtn3.addEventListener("change", function () {
    const file = this.files[0];

    if (file) {
        const reader = new FileReader();
        reader.onload = function () {
            const result = reader.result;
            img3.src = result;
            checknull3.value = "ok";
        }
        reader.readAsDataURL(file);
    }
    
});
cancelbtn3.addEventListener("click", function () {
            img3.src = "";
            checknull3.value = "null";
        });
//lấy ảnh cũ
    var anh = document.getElementsByClassName("anhcu")[0];
    if (anh != null && anh.innerHTML != "") {
        img.src = "../png/anhweb/" + anh.innerHTML;
    }
    var anh1 = document.getElementsByClassName("anhcu")[1];
    if (anh1 != null && anh1.innerHTML != "") {
        img1.src = "../png/anhweb/" + anh1.innerHTML;
    }
    var anh2 = document.getElementsByClassName("anhcu")[2];
    if (anh2 != null && anh2.innerHTML != "") {
        img2.src = "../png/anhweb/" + anh2.innerHTML;
    }
    var anh3 = document.getElementsByClassName("anhcu")[3];
    if (anh3 != null &&  anh3.innerHTML != "") {
        img3.src = "../png/anhweb/" + anh3.innerHTML;
    }