using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sieuthimini.form
{
    public partial class xuly : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Request.Params["action"] == "dangxuat")
            {
                Session["dangnhap"] = false;
                Session["admin"] = false;
                Response.Write(1);
            } 
            if ((string)Request.Params["action"] == "set_time_out")
            {
                Application["timeout"] = Int32.Parse( Request.Params["time"]);
            }
            if ((string)Request.Params["action"] == "goTo")
            {
                string json = "{\"name\" : \"name\", \"age\" : 18}";
                Response.Clear();
                Response.ContentType = "application/json; charset=utf-8";
                Response.Write(json);
                Response.End();
            }
            if ((string)Request.Params["action"] == "deleteCartById")
            {
                int taikhoan = Convert.ToInt32(Session["taikhoan"]);
                int masp = Int32.Parse( Request.Params["masp"]) ;
                dc.deleteGiohang(masp, taikhoan);
                List<giohang1> a = (List<giohang1>)Session["giohang"];
                foreach (giohang1 a1 in a)
                {
                    if (a1.masp.Equals(masp))
                    {
                        a.Remove(a1);
                        break;
                    }
                }
                Session["giohang"] = a;
            }
            if ((string)Request.Params["action"] == "dangban") 
            {
                if ((bool)Session["dangnhap"] && (bool)Session["admin"])
                {
                    dc.an_hiensanpham(Convert.ToBoolean(Request.Params["trangthai"]), Convert.ToInt32(Request.Params["ma"]));
                    Response.Write(1);
                }
                else Response.Write(0);
            }
            if ((string)Request.Params["action"] == "themgio")
            {
                if (!(bool)Session["admin"])
                {
                    List<giohang1> a = (List<giohang1>)Session["giohang"];
                    int ma = Convert.ToInt32(Request.Params["ma"]);
                    int gia = Convert.ToInt32(Request.Params["gia"]);
                    giohang1 b = new giohang1(ma, gia, 1);
                    giohang1 tam = new giohang1();
                    bool kt = true;
                    foreach (giohang1 i in a)
                    {
                        if (b.masp == i.masp && b.gia == i.gia)
                        { kt = false; i.soluong++; tam = i; }
                    }
                    if (kt) a.Add(b);
                    Session["giohang"] = a;
                    Response.Write(tam.masp + " " + tam.gia + " " + tam.soluong);
                }
                else
                {
                    Response.Write("1");
                }
            }
            if ((string)Request.Params["action"] == "doisoluong")
            {
                List<giohang1> a = (List<giohang1>)Session["giohang"];
                int stt = Convert.ToInt32(Request.Params["stt"]);
                int value = Convert.ToInt32(Request.Params["value"]);
                if (value == 0) {
                    a.RemoveAt(stt);
                    Session["giohang"] = a;                  
                }
                else
                {
                    a[stt].soluong = value;
                    Session["giohang"] = a;
                }
            }
            if ((string)Request.Params["action"] == "Thanhtoan")
            {
                if (!(bool)Session["dangnhap"])
                { Response.Write(1); }
                else
                {
                    List<giohang1> sanpham = (List<giohang1>)Session["giohang"];
                    int taikhoan = Convert.ToInt32(Session["taikhoan"]);
                    string diachi = (string)Request.Params["diachi"];
                    int stt = 0;
                    dc.themgiohang(taikhoan, sanpham[stt].masp, sanpham[stt].soluong, diachi);
                    sanpham.RemoveAt(stt);
                    Session["giohang"] = sanpham;
                    Response.Write("okgg");
                }                    
            }
            if ((string)Request.Params["action"] == "capnhatdonhang")
            {
                if (!(bool)Session["dangnhap"] && !(bool)Session["admin"])
                { Response.Write("1"); }
                else
                {
                    int madon = Convert.ToInt32( Request.Params["madon"]);
                    int trangthai = Convert.ToInt32(Request.Params["trangthai"]);
                    dc.capnhatgiohang(madon, trangthai);
                    Response.Write("0");
                }
            }

        }

        void getData()
        {
            String connectionString = WebConfigurationManager.AppSettings["connectionString"];
        }
    }
}