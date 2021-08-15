<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sieuthimini.form.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="../css_js/Login.css" rel="stylesheet" />
    <script src="../css_js/js/checkdulieu.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<h2>Đăng nhập</h2>
		<form method="post" runat="server" onsubmit="return Checkdn()" >
			<p id="user">Tên đăng nhập</p>
			<br />
			<input name="user" id="tdn" type="text" placeholder="Nhập tên đăng nhập"/>
			<br />
			<p id="pass">Mật khẩu</p>
			<br />
			<input name="pass" id="mk" type="password" placeholder="Nhập mật khẩu"/>
			<br />
			<input id="dn1" type="submit" value="Đăng nhập" /> 
			<br />
			<p class="link"><i>Bạn chưa có tài khoản? Mời <a href="Dangki.aspx">Đăng kí</a></i></p>
			<br />
            <asp:Label ID="thongbao" runat="server" ></asp:Label>
		</form>
</asp:Content>

