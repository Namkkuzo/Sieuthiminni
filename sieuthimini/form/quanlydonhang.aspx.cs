using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class quanlydonhang : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["dangnhap"] && (bool)Session["admin"])
            {


                DataTable choxacnhan = new DataTable();
                DataTable danggoi = new DataTable();
                DataTable danggiao = new DataTable();
                DataTable dagiao = new DataTable();
                choxacnhan.Columns.Add("madon", typeof(Int32));
                choxacnhan.Columns.Add("ten", typeof(string));
                choxacnhan.Columns.Add("gia", typeof(Int32));
                choxacnhan.Columns.Add("soluong", typeof(Int32));
                choxacnhan.Columns.Add("sdt", typeof(string));
                choxacnhan.Columns.Add("diachi", typeof(string));
                choxacnhan.Columns.Add("tenkh", typeof(string));
                danggoi.Columns.Add("madon", typeof(Int32));
                danggoi.Columns.Add("ten", typeof(string));
                danggoi.Columns.Add("gia", typeof(Int32));
                danggoi.Columns.Add("soluong", typeof(Int32));
                danggoi.Columns.Add("sdt", typeof(string));
                danggoi.Columns.Add("diachi", typeof(string));
                danggoi.Columns.Add("tenkh", typeof(string));
                danggiao.Columns.Add("madon", typeof(Int32));
                danggiao.Columns.Add("ten", typeof(string));
                danggiao.Columns.Add("gia", typeof(Int32));
                danggiao.Columns.Add("soluong", typeof(Int32));
                danggiao.Columns.Add("sdt", typeof(string));
                danggiao.Columns.Add("diachi", typeof(string));
                danggiao.Columns.Add("tenkh", typeof(string));
                dagiao.Columns.Add("madon", typeof(Int32));
                dagiao.Columns.Add("ten", typeof(string));
                dagiao.Columns.Add("gia", typeof(Int32));
                dagiao.Columns.Add("soluong", typeof(Int32));
                dagiao.Columns.Add("sdt", typeof(string));
                dagiao.Columns.Add("diachi", typeof(string));
                dagiao.Columns.Add("tenkh", typeof(string));
                var a = dc.danhsachdonhang(null);
                foreach (danhsachdonhangResult b in a)
                {
                    if (b.iTrangthaidonhang == 2)
                        choxacnhan.Rows.Add(b.iMadonhang, b.sTensanpham, b.iTongtien, b.iSoluong, b.sSdt, b.sDiachi, b.sTendangnhap);
                    if (b.iTrangthaidonhang == 3)
                        danggoi.Rows.Add(b.iMadonhang, b.sTensanpham, b.iTongtien, b.iSoluong, b.sSdt, b.sDiachi, b.sTendangnhap);
                    if (b.iTrangthaidonhang == 4)
                        danggiao.Rows.Add(b.iMadonhang, b.sTensanpham, b.iTongtien, b.iSoluong, b.sSdt, b.sDiachi, b.sTendangnhap);
                    if (b.iTrangthaidonhang == 5)
                        dagiao.Rows.Add(b.iMadonhang, b.sTensanpham, b.iTongtien, b.iSoluong, b.sSdt, b.sDiachi, b.sTendangnhap);
                }
                rpchoxacnhan.DataSource = choxacnhan;
                rpchoxacnhan.DataBind();
                rpdanggoihang.DataSource = danggoi;
                rpdanggoihang.DataBind();
                rpdanggiao.DataSource = danggiao;
                rpdanggiao.DataBind();
                rpdagui.DataSource = dagiao;
                rpdagui.DataBind();
            }
            else
            {
                Response.Redirect("trangchu.aspx");
            }
        }
    }
}