using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class quanlysp : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            danhsachspdangban.DataSource = dc.danhsachsanpham(null);
            danhsachspdangban.DataBind();
            danhsachspngungban.DataSource = dc.danhsachsanphamkhongban();
            danhsachspngungban.DataBind();
        }
    }
}