using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class giohang : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            DataTable table = new DataTable();
            table.Columns.Add("masp", typeof(Int32));
            table.Columns.Add("tensp", typeof(string));
            table.Columns.Add("gia", typeof(Int32));
            table.Columns.Add("soluong", typeof(Int32));
            List<giohang1> a = (List<giohang1>)Session["giohang"];
            foreach (giohang1 b in a)
            {
                var tam = dc.chitietsanpham(b.masp).ToList();
                table.Rows.Add(b.masp,tam[0].sTensanpham, b.gia, b.soluong);
            }
            taogiohang.DataSource = table;
            taogiohang.DataBind();
        }
    }
}