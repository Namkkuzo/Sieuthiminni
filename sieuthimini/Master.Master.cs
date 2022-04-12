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
        DataClasses1DataContext _dataClasses1 = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<giohang1> list = (List<giohang1>)Session["giohang"];
            int total = 0;
            foreach (giohang1 item in list)
            {
                total += item.soluong;
            }
            totalCart.InnerHtml = total.ToString();
        }
    }
}