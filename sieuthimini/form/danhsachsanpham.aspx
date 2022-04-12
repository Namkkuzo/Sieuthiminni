<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="danhsachsanpham.aspx.cs" Inherits="sieuthimini.form.danhsachsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/danhsachsanpham.css" rel="stylesheet" />
    <link href="../css_js/trangchu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
    <form runat="server">
        <div id="huy_content">
        <div id="huy_menu">
            <label id="danhmuc">DANH MỤC SẢN PHẨM</label>
            <ul>
                <asp:Repeater ID="Loaihang" runat="server">
                    <ItemTemplate>
                      
                        <li><a href="danhsachsanpham.aspx?loaihang=<%# Eval("iMaloaisp") %>"><%# Eval("sTenloai") %></a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

        <div id="huy_maincontent">
            <asp:ListView runat ="server" id ="list_product">
                 <ItemTemplate>
                        <div class="sanpham_nam">
                            <img class="anhsanpham_nam" src="../png/anhweb/<%# Eval("sAnh") %>" />
                            <div class="wrapper_nam"> 
                                    <p class="tensanpham_nam"><a class="linkchitiet_nam" href="chitiet.aspx?masp=<%# Eval("iMasanpham") %>" ><%# Eval("sTensanpham") %></a></p>
                            </div>
                            <div class="gia_nam">
                                <div class="gia">
                                    <span style="font-size:0.8rem;" class="_3fVV-h">₫</span>
                                    <span class="giakhuyenmai_nam"><%# Eval("iGia") %></span>
                                </div>
                                <div class="luotmua">
                                    <span class="luotmua">Đã bán <%# Eval("iLuotmua") %></span>
                                </div>
                                
                            </div>
                            <span class="giohang"  onclick="themgiohang(<%# Eval("iMasanpham") %>,<%# Eval("iGia") %>)" >Thêm vào giỏ hàng</span>
                        </div>
                    </ItemTemplate>
            </asp:ListView>


        </div>
        <!--
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="list_product" PageSize="9999" >
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="pageIndex"/>
                    <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="pageIndex" />
                </Fields>
            </asp:DataPager>
            -->
        
    </div>
    </form>
</asp:Content>
