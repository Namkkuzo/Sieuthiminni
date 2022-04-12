using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            timeout.InnerHtml = Application["timeout"].ToString();
            if (IsPostBack)
            {

                string tendn = Request.Form["user"];
                string pass = Request.Form["pass"];
                var a =dc.kiemtradangnhap(tendn).ToList();
                if (a.Count < 1)
                {
                    thongbao.Text = "Sai tài khoản";
                }
                else if (Request.Form["pass"] != a[0].sMatkhau)
                {
                    thongbao.Text = "Sai mật khẩu";
                }    
                else
                {
                    Session["dangnhap"] = true;
                    Session["taikhoan"] = a[0].iMataikhoan;
                    Session["admin"] = (bool)a[0].bAdmin;
                    if ((bool)Session["admin"])
                        Response.Redirect("quanlysp.aspx");
                    else Response.Redirect("trangchu.aspx");
                }

            }
           

        }

    }
}