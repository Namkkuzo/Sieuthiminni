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
            tukhoa.Text =(string) Request["timkiem"];
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-53FJKIT;Initial Catalog=sieuthi_mini;Integrated Security=True");// khai báo kết nối với database dựa vào chuỗi kết nối.chuối kết nối thay đổi theo máy
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
                // câu lệnh tìm kiếm tương đối
            DataTable table = new DataTable();// khai báo 1 table lưu trữ kết quả tìm kiếm
            SqlDataAdapter da;
            using (SqlCommand cmd = new SqlCommand(commandtext, con))// khai báo 1 câu lệnh sql sử dụng kết nối "con" lệnh là "commandtext"
            {
                cmd.CommandType = CommandType.Text;//xác định loại câu lệnh cho cmd
                con.Open();// mở kết nối
                da = new SqlDataAdapter(cmd);// đọc dữ liệu sử dụng câu lệnh cmd
                da.Fill(table);// đổ kết quả lấy được vào table đã tạo
                con.Close();// đóng kết nối
            }
            listsp.DataSource = table;
            listsp.DataBind();
        }
    }
}