<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Dangki.aspx.cs" Inherits="sieuthimini.form.Dangki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../css_js/Dangki.css" rel="stylesheet" />
    <script src="../css_js/js/checkdulieu.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Đăng kí tài khoản</h2>
    <form method="post" onsubmit="return kiemtradangki()" runat="server" id="dangki" >
        <table >
            <tr>
                <td >Họ và tên</td>
                <td>
                    <input type="text" id="txtten" name="hoten" placeholder="Nhập họ tên" /><span id="baoloiten" class="baoloi"></span>
                </td>
            </tr>
            <tr>
                <td >Số điện thoại</td>
                <td>
                    <input type="text" id="txtsdt" name="sdt" placeholder="Nhập số điện thoại" /><span  id="baoloisdt"  class ="baoloi"></span>
                </td>
            </tr>
            <tr>
                <td >Mật khẩu</td>
                <td>
                    <input type="password" id="txtmk1"  name="pass" placeholder="Nhập mật khẩu" /><span   id="baoloimk1"class="baoloi"></span>
                </td>
            </tr>
            <tr>
                <td >Nhập lại mật khẩu</td>
                <td>
                    <input type="password" id="txtmk2" name="repass" placeholder="Nhập lại mật khẩu" /><span   id="baoloimk2" class="baoloi"></span>
                </td>
            </tr>
        </table>
        <input id="dk" type="submit" value="Đăng ký" />
        <br />
        <asp:Label ID="thongbao" runat="server"></asp:Label>
    </form>
</asp:Content>
