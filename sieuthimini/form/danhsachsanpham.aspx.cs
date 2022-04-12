
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class danhsachsanpham : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { 
                if ((bool)Session["dangnhap"] && (bool)Session["admin"])
                {
                    Response.Redirect("quanlysp.aspx");
                }
                Loaihang.DataSource = dc.danhsachloaisp();
                Loaihang.DataBind();
                if (Request["loaihang"] == null)
                {
                    list_product.DataSource = dc.danhsachsanpham(null);
                    list_product.DataBind();
                }
                else
                {
                    list_product.DataSource = dc.danhsachsanpham(Convert.ToInt32(Request["loaihang"]));
                    list_product.DataBind();
                }
            }
                
        }
    }
}