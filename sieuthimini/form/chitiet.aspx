<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="sieuthimini.form.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="../css_js/style.css" rel="stylesheet" />
   <link href="../fontawesome/css/solid.css" rel="stylesheet" />
   <link href="../fontawesome/css/brands.css" rel="stylesheet" />
   <link href="../fontawesome/css/fontawesome.css" rel="stylesheet" />
    <script type="text/javascript" src="../css_js/js/js_hue.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="content">
            <div class="slider">
                <div class="khunganhhienthi">
                    <img class="anhhienthi" src="" alt="" />
                </div>
                <div class="danhsachanh">
                    <asp:Repeater ID="anhsp" runat="server">
                        <ItemTemplate>
                            <img onclick="doianh(this)" class="anhslide" src="../png/anhweb/<%# Eval("sAnh") %>" />
                            <div class="khunganhhienthi anhhover">
                                <img class="anhhienthi" src="../png/anhweb/<%# Eval("sAnh") %>" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <asp:Repeater ID="thongtinsp" runat="server">
                <ItemTemplate>
                    <div id="thongso">
                        <div class="ten_sp"><%# Eval("sTensanpham") %></div>
                        <div class="gia">
                            <div  class="gia"><%# Eval("iGia") %></div>
                        </div>
                        <div class="a">
                            <div class="deal">
                                <div class="deal-sp" style="color: darkred;">DEAL SỐC <b>Kèm Deal Sốc</b></div>
                            </div>
                            <div class="xu">
                                <div><i style="margin-right: 15px; color: #ffd800;" class="fas fa-money-bill-alt"></i>Mua hàng và tích 10.000 xu</div>
                            </div>
                            <div class="ship">
                                <div class="ship1">
                                    <div><i style="margin-right: 15px; color: #3e7208;" class="fas fa-truck"></i>Miễn Phí Vận Chuyển</div>
                                </div>
                            </div>
                            <div class="nut" style="margin-bottom: 15px;">
                                <button onclick="themgiohang(<%# Eval("iMasanpham") %>,<%# Eval("iGia") %>)" type="button" class="add giohang"><a style="color: darkred; text-decoration: none;">Thêm Vào Giỏ Hàng</a></button>
                            </div>
                            <div class="thongtinkhac">
                                <div class="trahang">
                                    <div><i style="margin-right: 15px; color: #ffd800;" class="fas fa-history"></i>7 Ngày Miễn Phí Trả Hàng</div>
                                </div>
                                <div class="camket">
                                    <div><i style="margin-right: 15px; color: #ffd800;" class="fab fa-angellist"></i>Cam Kết Hàng Chính Hãng 100%</div>
                                </div>
                                <div class="ship2">
                                    <div><i style="margin-right: 15px; color: #3e7208;" class="fas fa-shipping-fast"></i>Miễn Phí Vận Chuyển</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           
            <asp:Repeater ID="thongsosp1" runat="server">
                <ItemTemplate>
                    <div id="thongtin1">
                        <div class="chitietsp">
                            <div class="demucthongso">Thông số chi tiết</div>
                            <div class="thongsosp">
                                <%# Eval("sThongsosanpham") %>
                            </div>
                        </div>
                        <div class="mota-sp">
                            <div  class="demucthongso">Mô Tả Sản Phẩm: </div>
                            <div  class="thongsosp">
                                <%# Eval("sMotachitiet") %>
                            </div>
                            <br>
                            </br>
                            <div>
                                <div style="margin-bottom: 50px;"><b style="font-size: 15px;">Lưu ý</b> : Không dành cho trẻ dưới 1 tuổi.</div>
                            </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
        </main>
    <script src="../css_js/js/chitietsp.js"></script>
</asp:Content>  