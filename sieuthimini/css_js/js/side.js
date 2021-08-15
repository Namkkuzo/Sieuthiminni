var chuyen = 0;
function next_nam() {
    var anh = document.getElementsByClassName("anhsideshow_nam");
    var kichthuoc = document.getElementsByClassName("side_nam")[0].clientWidth;
    var max = anh.length * kichthuoc;
    max -= kichthuoc;
    if (chuyen == 0)
        chuyen = max;
    else chuyen -= kichthuoc;
    var chuyenside = document.getElementById("chuyenside_nam");
        chuyenside.style.marginLeft = '-' + chuyen + 'px';
}
function back_nam() {
    var anh = document.getElementsByClassName("anhsideshow_nam");
    var kichthuoc = document.getElementsByClassName("side_nam")[0].clientWidth;
    var max = anh.length * kichthuoc;
    max -= kichthuoc;
    if (chuyen < max)
        chuyen += kichthuoc;
    else chuyen = 0;
    var chuyenside2 = document.getElementById("chuyenside_nam");
    chuyenside2.style.marginLeft = '-' + chuyen + 'px';
}
setInterval(function () {
    back_nam();
}, 3000)