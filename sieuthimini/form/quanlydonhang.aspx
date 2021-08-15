<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="quanlydonhang.aspx.cs" Inherits="sieuthimini.form.quanlydonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/quanlydonhang.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_nam">
            <p class="trangthaidon_nam">Đơn hàng đang chờ xác nhận</p>
            <asp:Repeater ID="rpchoxacnhan" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th class="xacnhan_nam">Chọn</th>
                            <th class="tensp_nam">Tên sản phẩm</th>
                            <th class="tenkh_nam">Tên khách hàng</th>
                            <th class="sdt_nam">Số điện thoại</th>
                            <th class="diachi_nam">Địa chỉ</th>
                            <th class="Soluong_nam">Số lượng</th>
                            <th class="tongtien_nam">Tổng tiền</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="xacnhan_nam">
                            <input class="chonxacnhan_nam" type="checkbox" value="<%# Eval("madon") %>" /></td>
                        <td class="tensp_nam"><%# Eval("ten") %></td>
                        <td class="tenkh_nam"><%# Eval("tenkh") %></td>
                        <td class="sdt_nam"><%# Eval("sdt") %></td>
                        <td class="diachi_nam"><%# Eval("diachi") %></td>
                        <td class="Soluong_nam"><%# Eval("soluong") %></td>
                        <td class="tongtien_nam"><%# Eval("gia") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
        <a class="nut" href="javascript:xacnhan()">Xác nhận</a>
                </FooterTemplate>
            </asp:Repeater>
            <p  class="trangthaidon_nam">Đơn hàng đang đóng gói</p>
            <asp:Repeater ID="rpdanggoihang" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th class="xacnhan_nam">Chọn</th>
                            <th class="tensp_nam">Tên sản phẩm</th>
                            <th class="tenkh_nam">Tên khách hàng</th>
                            <th class="sdt_nam">Số điện thoại</th>
                            <th class="diachi_nam">Địa chỉ</th>
                            <th class="Soluong_nam">Số lượng</th>
                            <th class="tongtien_nam">Tổng tiền</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="xacnhan_nam">
                            <input type="checkbox" class="chongoihang_nam" value="<%# Eval("madon") %>" /></td>
                        <td class="tensp_nam"><%# Eval("ten") %></td>
                        <td class="tenkh_nam"><%# Eval("tenkh") %></td>
                        <td class="sdt_nam"><%# Eval("sdt") %></td>
                        <td class="diachi_nam"><%# Eval("diachi") %></td>
                        <td class="Soluong_nam"><%# Eval("soluong") %></td>
                        <td class="tongtien_nam"><%# Eval("gia") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
        <a class="nut" href="javascript:giaohang()" type="button">Giao hàng</a>
                </FooterTemplate>
            </asp:Repeater>
            <p  class="trangthaidon_nam"> Đơn hàng đang giao</p>
            <asp:Repeater ID="rpdanggiao" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th class="xacnhan_nam">Chọn</th>
                            <th class="tensp_nam">Tên sản phẩm</th>
                            <th class="tenkh_nam">Tên khách hàng</th>
                            <th class="sdt_nam">Số điện thoại</th>
                            <th class="diachi_nam">Địa chỉ</th>
                            <th class="Soluong_nam">Số lượng</th>
                            <th class="tongtien_nam">Tổng tiền</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="xacnhan_nam">
                            <input class="chondanggiao_nam" type="checkbox" value="<%# Eval("madon") %>" /></td>
                        <td class="tensp_nam"><%# Eval("ten") %></td>
                        <td class="tenkh_nam"><%# Eval("tenkh") %></td>
                        <td class="sdt_nam"><%# Eval("sdt") %></td>
                        <td class="diachi_nam"><%# Eval("diachi") %></td>
                        <td class="Soluong_nam"><%# Eval("soluong") %></td>
                        <td class="tongtien_nam"><%# Eval("gia") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
        <a class="nut" href="javascript:dagiao()" type="button">Đã gửi</a>
                </FooterTemplate>
            </asp:Repeater>
            <p  class="trangthaidon_nam">Đơn hàng đang giao thành công</p>
            <asp:Repeater ID="rpdagui" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th class="tensp_nam">Tên sản phẩm</th>
                            <th class="tenkh_nam">Tên khách hàng</th>
                            <th class="sdt_nam">Số điện thoại</th>
                            <th class="diachi_nam">Địa chỉ</th>
                            <th class="Soluong_nam">Số lượng</th>
                            <th class="tongtien_nam">Tổng tiền</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="tensp_nam"><%# Eval("ten") %></td>
                        <td class="tenkh_nam"><%# Eval("tenkh") %></td>
                        <td class="sdt_nam"><%# Eval("sdt") %></td>
                        <td class="diachi_nam"><%# Eval("diachi") %></td>
                        <td class="Soluong_nam"><%# Eval("soluong") %></td>
                        <td class="tongtien_nam"><%# Eval("gia") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        
    </main>
</asp:Content>
