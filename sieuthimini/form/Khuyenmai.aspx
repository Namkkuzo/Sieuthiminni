<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Khuyenmai.aspx.cs" Inherits="sieuthimini.form.Khuyenmai" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css_js/Khuyenmai.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main_v">
        <asp:Repeater ID="khuyenmai" runat="server">
            <ItemTemplate>
                <div class="km_v">
                    <img class="image_v" src="../png/anhweb/<%# Eval("sAnh") %>" />
                    <div class="ndkm_v">
                        <p class="tieude_v"><%# Eval("sTieude") %></p>
                        <p class="noidung_v"><%# Eval("sNoidung") %></p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </main>
</asp:Content>
