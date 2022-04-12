<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="sieuthimini.form.giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/quanlysp.css" rel="stylesheet" />
    <link href="../fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="../fontawesome/css/solid.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_nam">

            <div class="congcu">
                <a href="donmua.aspx"><i class="fas fa-store"></i><span>Đơn mua</span></a>
            </div>
            <div id ="tblgiohang_nam">
            <table id ="tbl_huy">
                <tr  id="menu_tbl_huy">
                    <th class="luachon_nam">Lựa chọn</th>
                    <th class="sanpham_nam">Sản phẩm</th>
                    <th class="gia_nam">Giá</th>
                    <th class="soluong_nam">Số lượng</th>
                </tr>
                <asp:Repeater ID="taogiohang" runat="server">
                    <ItemTemplate>
                        <tr id="donhang_nam<%# Container.ItemIndex %>">
                            <td class="luachon_nam">
                                <input class="luachonthanhtoan_nam" type="checkbox" checked  /></td>
                            <td class="sanpham"><span><a class="linkchitiet_nam" href="chitiet.aspx?masp=<%# Eval("masp") %>"><%# Eval("tensp") %></a></span></td>
                            <td><span><%# Eval("gia") %></span></td>
                            <td>
                                <input type="number" onchange="doisoluong(<%# Container.ItemIndex %>,this)" value="<%# Eval("soluong") %>" /></td>
                            <td><button onclick ="deleteCartById (<%# Eval("masp") %>, <%# Container.ItemIndex %>)">Xóa</button></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
                </div>
            <br />
                <div class="thanhtoan">
                <span class="txtdiachi_nam">Địa chỉ: <input type="text" size="25px"/></span>
                <a href="javascript:thanhtoan()">Thanh toán</a>
            </div>
            

    </main>
</asp:Content>
