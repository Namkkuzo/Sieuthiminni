using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<giohang1> list = (List<giohang1>)Session["giohang"];
            totalCart.InnerHtml = list.Count.ToString();
        }
    }
}