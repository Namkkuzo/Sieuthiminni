
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
            if ((bool)Session["dangnhap"]&& (bool)Session["admin"])
            {
                Response.Redirect("quanlysp.aspx");
            }    
            Loaihang.DataSource = dc.danhsachloaisp();
            Loaihang.DataBind();
            if (Request["loaihang"] == null)
            {
                listsp.DataSource = dc.danhsachsanpham(null);
                listsp.DataBind();
            }
            else {
                listsp.DataSource = dc.danhsachsanpham(Convert.ToInt32(Request["loaihang"]));
                listsp.DataBind();
            }
        }
    }
}