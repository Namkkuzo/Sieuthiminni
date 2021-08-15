using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class donmua : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["dangnhap"] && !(bool)Session["admin"])
            {
                taodonmua.DataSource = dc.danhsachdonhang(Convert.ToInt32(Session["taikhoan"]));
                taodonmua.DataBind();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }
    }
}