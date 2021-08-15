<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="donmua.aspx.cs" Inherits="sieuthimini.form.donmua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/quanlysp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_nam">
        <form method="post">
            <table id="tbl_huy">
                <tr id="menu_tbl_huy">
                    <th class="sanpham_nam">Sản phẩm</th>
                    <th class="gia_nam">Giá</th>
                    <th class="soluong_nam">Số lượng</th>
                    <th class="thanhtien_nam">Thành tiền</th>
                    <th class="trangthai_nam">Trạng thái</th>
                </tr>
                <asp:Repeater ID="taodonmua" runat="server">
                    <ItemTemplate>
                        <tr id="donhang_nam<%# Container.ItemIndex %>">
                            <td class="sanpham"><span><%# Eval("sTensanpham") %></span></td>
                            <td><span><%# Eval("iGia") %></span></td>
                            <td><span><%# Eval("iSoluong") %></span></td>
                            <td><span><%# Eval("iTongtien") %></span></td>
                            <td><span><%# Eval("STrangthai") %></span></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </form>
    </main>
</asp:Content>
