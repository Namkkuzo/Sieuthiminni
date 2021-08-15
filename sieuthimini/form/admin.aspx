<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="sieuthimini.form.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/trangchu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_nam"  >
        <div class="congcu_admin">
        <ul>
            <li>
                <a href="dssanpham.aspx">danhsachsanpham.aspx</a>
            </li>
        </ul>
    </div>
    <iframe class="frame" src="dssanpham.aspx"></iframe>
    </main>
    
</asp:Content>
