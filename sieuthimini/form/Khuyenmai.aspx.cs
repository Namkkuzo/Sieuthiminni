using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
   
    public partial class Khuyenmai : System.Web.UI.Page
    {
        DataClasses1DataContext km = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            khuyenmai.DataSource = km.danhsachkhuyenmai();
            khuyenmai.DataBind();
        }
    }
}