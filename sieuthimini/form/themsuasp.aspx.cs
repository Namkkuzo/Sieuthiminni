using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class themsuasp : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

                if ((bool)Session["dangnhap"] && (bool)Session["admin"])
                {     
                 int masp = Convert.ToInt32(Request["masp"]);
                var loaihang = dc.danhsachloaisp().ToList();
                ddlloaihang.DataSource = loaihang;
                ddlloaihang.DataTextField = "sTenloai";
                ddlloaihang.DataValueField = "iMaloaisp";
                ddlloaihang.DataBind();
                if (Request["masp"] == null)
                {
                    submit.Text = "Thêm mới";
                    DataTable table = new DataTable();
                    table.Columns.Add("sTensanpham", typeof(string));
                    table.Columns.Add("iGia", typeof(Int32));
                    table.Rows.Add(null, null);
                    sp.DataSource = table;
                    sp.DataBind();
                }
                else
                {
                    ddlloaihang.Visible = false;
                    loai.Visible = false;
                    var ac = dc.chitietsanpham(Convert.ToInt32(Request["masp"])).ToList();
                    var anh = dc.layanhsp(masp, null);
                    sp.DataSource = ac;
                    sp.DataBind();
                    loadmota.Text = ac[0].sMotachitiet;
                    loadanhcu.DataSource = anh;
                    loadanhcu.DataBind();
                    loadthongso.Text = ac[0].sThongsosanpham;
                    submit.Text = "Chỉnh sửa";
                }
            }
            else
            {
                Response.Redirect("danhsachsanpham.aspx");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (submit.Text == "Chỉnh sửa")
            {
                int masp = Convert.ToInt32(Request["masp"]);
                var anh = dc.layanhsp(masp, null).ToList();
                string thongso = Request.Form["thongsomoi"];
                string mota = Request.Form["motamoi"];
                string tenmoi = Request.Form["tensp"];
                int giamoi = Convert.ToInt32(Request.Form["giasp"]);
                string a1, a2, a3, a4;
                HttpPostedFile anh1 = Request.Files["anh1"];
                HttpPostedFile anh2 = Request.Files["anh2"];
                HttpPostedFile anh3 = Request.Files["anh3"];
                HttpPostedFile anh4 = Request.Files["anh4"];
                if (anh1 != null && anh1.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh1.FileName;
                    anh1.SaveAs(stringname);
                    a1 = anh1.FileName;
                }
                else
                {
                    if (anh.Count >= 1 && Request.Form["checknull1"]=="ok")
                        a1 = anh[0].sAnh;
                    else a1 = null;
                }
                if (anh2 != null && anh2.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh2.FileName;
                    anh2.SaveAs(stringname);
                    a2 = anh2.FileName;
                }
                else
                {
                    if (anh.Count >= 2 && Request.Form["checknull2"] == "ok")
                        a2 = anh[1].sAnh;
                    else a2 = null;
                }
                if (anh3 != null && anh3.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh3.FileName;
                    anh3.SaveAs(stringname);
                    a3 = anh3.FileName;
                }
                else
                {
                    if (anh.Count >= 3 && Request.Form["checknull3"] == "ok")
                        a3 = anh[2].sAnh;
                    else a3 = null;
                }
                if (anh4 != null && anh4.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh4.FileName;
                    anh4.SaveAs(stringname);
                    a4 = anh4.FileName;
                }
                else
                {
                    if (anh.Count >= 4 && Request.Form["checknull4"] == "ok")
                        a4 = anh[3].sAnh;
                    else a4 = null;
                }
                if (a1==null)
                {
                    if (a4 != null)
                    {
                        a1 = a4;
                        a4 = null;
                    }  
                    else if (a3 != null)
                    {
                        a1 = a3;
                        a3 = null;
                    }
                    else if (a2 != null)
                    {
                        a1 = a2;
                        a2 = null;
                    }
                }
                else if (a2 == null)
                {
                    if (a4 != null)
                    {
                        a2 = a4;
                        a4 = null;
                    }
                    else if (a3 != null)
                    {
                        a2 = a3;
                        a3 = null;
                    }
                } 
                else if (a3==null)
                {
                    if (a4 != null)
                    {
                        a3 = a4;
                        a4 = null;
                    }
                }    
                dc.capnhatsanpham(masp, tenmoi, giamoi, mota, thongso, a1, a2, a3, a4);
                Response.Redirect("themsuasp.aspx?masp=" + masp);
            }
            if (submit.Text== "Thêm mới")
            {
                string thongso = Request.Form["thongsomoi"];
                string mota = Request.Form["motamoi"];
                string tenmoi = Request.Form["tensp"];
                int giamoi = Convert.ToInt32(Request.Form["giasp"]);
                string a1, a2, a3, a4;
                HttpPostedFile anh1 = Request.Files["anh1"];
                HttpPostedFile anh2 = Request.Files["anh2"];
                HttpPostedFile anh3 = Request.Files["anh3"];
                HttpPostedFile anh4 = Request.Files["anh4"];
                if (anh1 != null && anh1.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh1.FileName;
                    anh1.SaveAs(stringname);
                    a1 = anh1.FileName;
                }
                else
                {
                    a1 = null;
                }
                if (anh2 != null && anh2.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh2.FileName;
                    anh2.SaveAs(stringname);
                    a2 = anh2.FileName;
                }
                else
                {
                    a2 = null;
                }
                if (anh3 != null && anh3.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh3.FileName;
                    anh3.SaveAs(stringname);
                    a3 = anh3.FileName;
                }
                else
                {
                    a3 = null;
                }
                if (anh4 != null && anh4.ContentLength > 0)
                {
                    string stringname = Server.MapPath("../png/anhweb/") + anh4.FileName;
                    anh4.SaveAs(stringname);
                    a4 = anh4.FileName;
                }
                else
                {
                    a4 = null;
                }
                if (a1 == null)
                {
                    if (a4 != null)
                    {
                        a1 = a4;
                        a4 = null;
                    }
                    else if (a3 != null)
                    {
                        a1 = a3;
                        a3 = null;
                    }
                    else if (a2 != null)
                    {
                        a1 = a2;
                        a2 = null;
                    }
                }
                else if (a2 == null)
                {
                    if (a4 != null)
                    {
                        a2 = a4;
                        a4 = null;
                    }
                    else if (a3 != null)
                    {
                        a2 = a3;
                        a3 = null;
                    }
                }
                else if (a3 == null)
                {
                    if (a4 != null)
                    {
                        a3 = a4;
                        a4 = null;
                    }
                }
                var a = dc.themsanpham(tenmoi, giamoi, mota, thongso, a1, a2, a3, a4).ToList();
                dc.phanloaisanpham(Convert.ToInt32( ddlloaihang.SelectedValue), a[0].iMasanpham);
                Response.Redirect("themsuasp.aspx");
            }
        }

        protected void Huy_Click(object sender, EventArgs e)
        {
            Response.Redirect("quanlysp.aspx");
        }
    }
}