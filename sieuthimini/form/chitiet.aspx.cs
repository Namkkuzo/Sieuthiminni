using System;

namespace sieuthimini.form
{
    public partial class chitiet : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int masp = Convert.ToInt32( Request["masp"]);
            thongtinsp.DataSource = dc.chitietsanpham(masp);
            thongtinsp.DataBind();
            thongsosp1.DataSource = dc.chitietsanpham(masp);
            thongsosp1.DataBind();
            anhsp.DataSource = dc.layanhsp(masp, null);
            anhsp.DataBind();
            //same_product.DataSource = dc.getProductSame(masp , 5);
            //same_product.DataBind();
        }
    }
}