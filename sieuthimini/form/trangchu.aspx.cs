using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini
{
    public partial class trangchu : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable tintuc = new DataTable();
            tintuc.Columns.Add("matin", typeof(Int32));
            tintuc.Columns.Add("khuyenmai", typeof(bool));
            tintuc.Columns.Add("tieude", typeof(string));
            tintuc.Columns.Add("anh", typeof(string));
            tintuc.Columns.Add("banner", typeof(string));
            var a = dc.khuyenmailon().ToList();
            foreach (khuyenmailonResult result in a)
            {
                tintuc.Rows.Add(result.iMakhuyenmai, true, result.sTieude, result.sAnh,result.sbanner);
            }
            slideshow_nam.DataSource = tintuc;
            slideshow_nam.DataBind();
            //tạo table
            DataTable sanpham = new DataTable();
            sanpham.Columns.Add("ma", typeof(Int32));
            sanpham.Columns.Add("ten", typeof(string));            
            sanpham.Columns.Add("anh", typeof(string));
            sanpham.Columns.Add("gia", typeof(Int32));
            sanpham.Columns.Add("khuyenmai", typeof(float));
            sanpham.Columns.Add("giahientai", typeof(Int32));
            sanpham.Columns.Add("Luotmua", typeof(Int32));
            var c = dc.danhsachsanpham(null).ToList();
            var d = c.Count; Int32 i = 0;
            // lấy 20 sản phẩm bán chạy
            foreach(danhsachsanphamResult result in c)
            {
                if (i < 20)
                 sanpham.Rows.Add(result.iMasanpham, result.sTensanpham, result.sAnh, result.iGia, result.fKhuyenmai, Convert.ToInt32(result.iGia * (1+result.fKhuyenmai)),result.iLuotmua);
                else break;
                i++;
            }
            danhsachsanpham.DataSource = sanpham;
            danhsachsanpham.DataBind();
            sanpham.Clear();

            foreach (danhsachsanphamResult result in c)
            {
                    sanpham.Rows.Add(result.iMasanpham, result.sTensanpham, result.sAnh, result.iGia, result.fKhuyenmai, Convert.ToInt32(result.iGia * (1 + result.fKhuyenmai)), result.iLuotmua);
            }
            DataView view = sanpham.DefaultView;
            view.Sort = "gia ASC";
            DataTable data = new DataTable();
            data = view.ToTable();
            sanpham.Clear();
            //sản phẩm giá rẻ
            i = 0;
            foreach (DataRow result in data.Rows)
            {
                if (i < 20)
                    sanpham.Rows.Add(result[0], result[1], result[2], result[3], result[4], Convert.ToInt32((int)result[3] * (1 + (float)result[4])), result[6]);
                else break;
                i++;
            }
            spgiare.DataSource = sanpham;
            spgiare.DataBind();
        }
    }
}