<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="quanlysp.aspx.cs" Inherits="sieuthimini.form.quanlysp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/quanlysp.css" rel="stylesheet" />
    <link href="../fontawesome/css/solid.css" rel="stylesheet" />
    <link href="../fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="../fontawesome/css/brands.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_nam">
        <%
            if (!(bool)Session["dangnhap"] && !(bool)Session["admin"])
            {
                Response.Redirect("danhsachsanpham.aspx");
            }%>
        <div class="congcu">
            <a  href="themsuasp.aspx">
                <i class="fas fa-plus-circle"></i>
                <span>Thêm mới</span>
            </a>
        </div>
        <table  id="tbl_huy">
            <tr  id="menu_tbl_huy">
                <th class="stt_nam">STT</th>
                <th class="ma_nam">Mã sản phẩm</th>
                <th class="te_nam">Tên</th>
                <th class="gia_nam">Giá</th>
                <th class="luotmua_nam">Lượt mua</th>
                <th class="dangban_nam">Đang bán</th>
                <th class="congcu_nam">Công cụ</th>
            </tr>
            <asp:Repeater ID="danhsachspdangban" runat="server">
                <ItemTemplate>
                    <tr >
                        <td class="stt_nam"><%# Container.ItemIndex + 1%></td>
                        <td class="ma_nam"><%# Eval("iMasanpham") %></td>
                        <td class="te_nam"><a class="linkchitiet_nam" href="chitiet.aspx?masp=<%# Eval("iMasanpham") %>"><%# Eval("sTensanpham") %></a></td>
                        <td class="gia_nam"><%# Eval("iGia") %></td>
                        <td class="luotmua_nam"><%# Eval("iLuotmua") %></td>
                        <td class="dangban_nam">
                            <input type="checkbox" id="dangban<%# Eval("iMasanpham") %>" name="scales"  onclick="capnhatdangban(<%# Eval("iMasanpham") %>)" checked/></td>
                        <td class="congcu_nam"><a href="themsuasp.aspx?masp=<%# Eval("iMasanpham") %>"><i class="fas fa-edit"></i></a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="danhsachspngungban" runat="server">
                <ItemTemplate>
                    <tr >
                        <td class="stt_nam"><%# Container.ItemIndex + 1%></td>
                        <td class="ma_nam"><%# Eval("iMasanpham") %></td>
                        <td class="te_nam"><a class="linkchitiet_nam" href="chitiet.aspx?masp=<%# Eval("iMasanpham") %>"><%# Eval("sTensanpham") %></a></td>
                        <td class="gia_nam"><%# Eval("iGia") %></td>
                        <td class="luotmua_nam"><%# Eval("iLuotmua") %></td>
                        <td class="dangban_nam">
                            <input type="checkbox" id="dangban<%# Eval("iMasanpham") %>" name="scales" onclick="capnhatdangban(<%# Eval("iMasanpham") %>)" /></td>
                        <td class="congcu_nam"><a href="themsuasp.aspx?masp=<%# Eval("iMasanpham") %>"><i class="fas fa-edit"></a></i></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </main>
</asp:Content>
