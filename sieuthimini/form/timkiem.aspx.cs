using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace sieuthimini.form
{
    public partial class timkiem : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            tukhoa.Text = (string)Request["timkiem"];
            string commandtext = "select tblSanpham.iMasanpham,tblSanpham.iLuotmua,max(tblAnhsp.sAnh) as" +
                " sAnh,tblSanpham.sTensanpham, tblSanpham.iGia,tblSanpham.bDangban, " +
                "max(tblLoaisanpham.fKhuyenmai) as  fKhuyenmai from tblSanpham , " +
                "tblSanpham_Loaihang , tblLoaisanpham, tblAnhsp" +
                " where tblSanpham.iMasanpham = tblSanpham_Loaihang.iMasanpham " +
                " and tblSanpham_Loaihang.iMaloai =   tblLoaisanpham.iMaloaisp " +
                " and tblSanpham.bDangban = 1 " +
                " and tblSanpham.sTensanpham like N'%" + (string)Request["timkiem"] + "%' and tblAnhsp.iMasanpham = tblSanpham.iMasanpham " +
                " group by tblSanpham.iMasanpham, tblSanpham.sTensanpham,tblSanpham.iGia, tblSanpham.bDangban,tblSanpham.iLuotmua " +
                "  order by iLuotmua desc";
            
            DataProvider dataProvider = new  DataProvider();
           
            listsp.DataSource = dataProvider.dtTable(commandtext); ;
            listsp.DataBind();
        }
    }
}