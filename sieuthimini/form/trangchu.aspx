<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="sieuthimini.trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../css_js/js/side.js"></script>
    <link href="../css_js/trangchu.css" rel="stylesheet" />
    <script src="../css_js/js/js_nam.js"></script>
    <link href="../fontawesome/css/solid.css" rel="stylesheet" />
    <link href="../fontawesome/css/brands.css" rel="stylesheet" />
    <link href="../fontawesome/css/fontawesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_nam">
        <div class="bao_nam">
            <div class="side_nam">
                <div class="dieuhuong_nam">
                    <i class="fas fa-angle-left" onclick="next_nam()"></i>
                    <i class="fas fa-angle-right" onclick="back_nam()"></i>
                </div>
                <div id="chuyenside_nam">
                    <asp:Repeater ID="slideshow_nam" runat="server">
                        <ItemTemplate>
                            <img class="anhsideshow_nam" src="../png/anhweb/<%# Eval ("banner")%>" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="noidungchinh_nam" id="nam_maincontent">

            <div class="sanphannb_nam">MUA NHIỀU NHẤT</div>
            <hr />
            <div class="sanphamnoibat_nam ">
                <asp:Repeater ID="danhsachsanpham" runat="server">
                    <ItemTemplate>
                        <div class="sanpham_nam">
                            <div class="sanphamview">
                               
                                <!-- <div id ="layer_<%#Container.ItemIndex %>" ></div> -->
                                <img class="anhsanpham_nam" src="../png/anhweb/<%# Eval("anh") %>" />
                                <div class="wrapper_nam">
                                    <a href="chitiet.aspx?masp=<%# Eval("ma") %>" class="tensanpham_nam"><%# Eval("ten") %></a>
                                </div>
                                <div class="gia_nam">
                                    <div class="gia">
                                        <span style="font-size: 0.8rem;" class="_3fVV-h">₫</span>
                                        <span class="giakhuyenmai_nam"><%# Eval("giahientai") %></span>
                                    </div>
                                    <div class="luotmua">
                                        <span class="luotmua">Đã bán <%# Eval("Luotmua") %></span>
                                    </div>

                                </div>
                            </div>
                            <!-- <div class ="hover_detail">
                                <div class="view_detail"> </div>
                            </div> -->
                            <span class="giohang" onclick="themgiohang(<%# Eval("ma") %>,<%# Eval("giahientai") %>)">Thêm vào giỏ hàng</span>
                        </div>
                    </ItemTemplate>
                   
                </asp:Repeater>
                <!--<FooterTemplate><div class="button_xemthem"><a class="label_xemthem" href="WebForm1.aspx" >Xem thêm</a></div></FooterTemplate>-->
               
            </div>
            <div class="sanphannb_nam">GIÁ RẺ NHẤT</div>
            <div class="sanphamnoibat_nam">
                <asp:Repeater ID="spgiare" runat="server">
                    <ItemTemplate>
                        <div class="sanpham_nam">
                            <img class="anhsanpham_nam" src="../png/anhweb/<%# Eval("anh") %>" />
                            <div class="wrapper_nam">
                                <a href="chitiet.aspx?masp=<%# Eval("ma") %>" class="tensanpham_nam"><%# Eval("ten") %></a>
                            </div>
                            <div class="gia_nam">
                                <div class="gia">
                                    <span style="font-size: 0.8rem;" class="_3fVV-h">₫</span>
                                    <span class="giakhuyenmai_nam"><%# Eval("giahientai") %></span>
                                </div>
                                <div class="luotmua">
                                    <span class="luotmua">Đã bán <%# Eval("Luotmua") %></span>
                                </div>

                            </div>
                            <span class="giohang" onclick="themgiohang(<%# Eval("ma") %>,<%# Eval("giahientai") %>)">Thêm vào giỏ hàng</span>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <script>document.getElementById('layer_19').innerHTML = '<a class ="label_xemthem" href ="WebForm1.aspx" >Xem thêm</a>';</script>
    </main>
</asp:Content>
