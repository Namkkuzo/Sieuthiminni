<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="timkiem.aspx.cs" Inherits="sieuthimini.form.timkiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/trangchu.css" rel="stylesheet" />
    <link href="../css_js/timkiem.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <div id="huy_content">
        <div id="tbketqua">
            <p class="tukhoa">Kết quả tìm kiếm cho từ khóa: <asp:Label CssClass="tukhoa" ID="tukhoa" style=" font-weight:bold" runat="server"></asp:Label></p>
        </div>
        <div class="sanphamnoibat_nam">
            <asp:Repeater ID="listsp" runat="server">
                <ItemTemplate>
                    <div class="sanpham_nam">
                        <img class="anhsanpham_nam" src="../png/anhweb/<%# Eval("sAnh") %>" />
                        <div class="wrapper_nam">
                            <p class="tensanpham_nam"><a class="linkchitiet_nam" href="chitiet.aspx?masp=<%# Eval("iMasanpham") %>" ><%# Eval("sTensanpham") %></a></p>
                        </div>
                        <div class="gia_nam">
                            <div class="gia">
                                <span style="font-size: 0.8rem;" class="_3fVV-h">₫</span>
                                <span class="giakhuyenmai_nam"><%# Eval("iGia") %></span>
                            </div>
                            <div class="luotmua">
                                <span class="luotmua">Đã bán <%# Eval("iLuotmua") %></span>
                            </div>

                        </div>
                        <span class="giohang" onclick="themgiohang(<%# Eval("iMasanpham") %>,<%# Eval("iGia") %>)">Thêm vào giỏ hàng</span>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>


</asp:Content>
