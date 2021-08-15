using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class Dangki : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string hoten = Request.Form["hoten"];
                string sdt = Request.Form["sdt"];
                string pass = Request.Form["pass"];
                dc.themtaikhoan(hoten, pass, sdt);
            }
        }
    }
}