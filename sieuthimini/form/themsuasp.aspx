<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="themsuasp.aspx.cs" Inherits="sieuthimini.form.themsuasp" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../ckeditor_4.14.0_full/ckeditor/ckeditor.js"></script>
    <script src="../css_js/js/jquery-3.5.1.min.js"></script>
    <link href="../fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="../fontawesome/css/brands.css" rel="stylesheet" />
    <link href="../fontawesome/css/solid.css" rel="stylesheet" />
    <link href="../css_js/themsuasp.css" rel="stylesheet" />
    <script src="../css_js/js/checkdulieu.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id ="mainthemsuasp_nam" >
        <form method="post" runat="server" onsubmit="return checksp()" enctype="multipart/form-data">
            <span>Tên sản phẩm :</span>
            <asp:Repeater ID="sp" runat="server">
                <ItemTemplate>
                    <input class="inputsp_nam" type="text" name="tensp" value="<%# Eval("sTensanpham") %>" /><span   id="baoloiten"class="baoloi"></span>
                    <br />
                    <span>Giá: </span>
                    <input type="number" id="giasp" name="giasp" value="<%# Eval("iGia") %>" /><span   id="baoloigia"class="baoloi"></span>
                </ItemTemplate>
            </asp:Repeater>
            <br />
            <span>Thông số sản phẩm:</span><span id="baoloithongso"class="baoloi"></span>

            <textarea name="thongsomoi" id="thongsosp">
            <asp:Label ID="loadthongso" runat="server"></asp:Label>
        </textarea>
            <span>Mô tả sản phẩm</span><span id="baoloimota"class="baoloi"></span>
            <textarea name="motamoi" id="motasp">
            <asp:Label ID="loadmota" runat="server"></asp:Label>
        </textarea>
            <asp:Label ID="loai" runat="server" Text="Loại sản phẩm:"></asp:Label>
            <asp:DropDownList ID="ddlloaihang" runat="server"></asp:DropDownList>
            <br />
            <span>Ảnh sản phẩm</span><span id="baoloianh"class="baoloi"></span>
            <div class="dsanhcu">
                <asp:Repeater ID="loadanhcu" runat="server">
                    <ItemTemplate>
                        <span class="anhcu" runat="server"><%# Eval("sAnh") %></span>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="container_nam">
                <div id="upanh1">
                    <div class="wrapper_nam">
                        <div class="image_nam">
                            <img class="anh_nam" alt="" />
                        </div>
                        <div class="content_nam">
                            <div class="icon_nam"><i class="upload fas fa-cloud-upload-alt"></i></div>
                            <div class="text_nam">No file chosen, yet! </div>
                        </div>
                        <div class="cancel_btn_nam"><i class=" huy_nam fas fa-times"></i></div>
                    </div>
                    <input type="file" class="default_btn_nam" name="anh1" hidden />
                    <input type="text" class="checknull" name="checknull1" value="ok" hidden />
                    <button type="button" onclick="defaultbtnactive()" class="custom_btn_nam">Choose a file</button>
                </div>
                <div id="upanh2">
                    <div class="wrapper_nam">
                        <div class="image_nam">
                            <img class="anh_nam" alt="" />
                        </div>
                        <div class="content_nam">
                            <div class="icon_nam"><i class="upload fas fa-cloud-upload-alt"></i></div>
                            <div class="text_nam">No file chosen, yet! </div>
                        </div>
                        <div class="cancel_btn_nam"><i class=" huy_nam fas fa-times"></i></div>
                    </div>
                    <input type="file" class="default_btn_nam" name="anh2" hidden />
                    <input type="text" class="checknull" name="checknull2" value="ok" hidden />
                    <button type="button" onclick="defaultbtnactive1()" class="custom_btn_nam">Choose a file</button>
                </div>
                <div id="upanh3">
                    <div class="wrapper_nam">
                        <div class="image_nam">
                            <img class="anh_nam" alt="" />
                        </div>
                        <div class="content_nam">
                            <div class="icon_nam"><i class="upload fas fa-cloud-upload-alt"></i></div>
                            <div class="text_nam">No file chosen, yet! </div>
                        </div>
                        <div class="cancel_btn_nam"><i class="huy_nam fas fa-times"></i></div>
                    </div>
                    <input type="file" class="default_btn_nam" name="anh3" hidden />
                    <input type="text" class="checknull" name="checknull3" value="ok" hidden />
                    <button type="button" onclick="defaultbtnactive2()" class="custom_btn_nam">Choose a file</button>
                </div>
                <div id="upanh4">
                    <div class="wrapper_nam">
                        <div class="image_nam">
                            <img class="anh_nam" alt="" />
                        </div>
                        <div class="content_nam">
                            <div class="icon_nam"><i class="upload fas fa-cloud-upload-alt"></i></div>
                            <div class="text_nam">No file chosen, yet! </div>
                        </div>
                        <div class="cancel_btn_nam"><i class=" huy_nam fas fa-times"></i></div>
                    </div>
                    <input type="file" class="default_btn_nam" name="anh4" hidden />
                    <input type="text" class="checknull" name="checknull4" value="ok" hidden />
                    <button type="button" onclick="defaultbtnactive3()" class="custom_btn_nam">Choose a file</button>
                </div>
            </div>
            <asp:Button CssClass="btnsubmit_nam" ID="submit" runat="server" OnClick="submit_Click" OnClientClick="return true;" />
            <asp:Button CssClass="btnsubmit_nam" ID="Huy" runat="server" Text="Hủy" OnClick="Huy_Click" />
            
            <div id="thongbao1"></div>
            <script src="../css_js/js/themsuasp.js"></script>
        </form>
    </main>
</asp:Content>
