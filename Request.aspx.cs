using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.SessionState;


public partial class Request : System.Web.UI.Page
{

    static DataTable cart = new DataTable();

    public static string SesId = "";
    public static string SesPrice = "";
    public static string SesQuantity = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    static SqlConnection cnnx = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static string GetData(string id)
    {


        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from sanpham where masp=" + id, con))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
                Dictionary<string, object> row;
                foreach (DataRow dr in dt.Rows)
                {
                    row = new Dictionary<string, object>();
                    foreach (DataColumn col in dt.Columns)
                    {
                        row.Add(col.ColumnName, dr[col]);
                    }
                    rows.Add(row);
                }
                return serializer.Serialize(rows);
            }
        }
        
    }


    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static string addToCart(string id, string price, string quantity)

    {
        SesId = id;
        SesPrice = price;
        SesQuantity = quantity;
        string cart = "{"+'"'+"masp"+'"'+":"+id+ "," + '"' + "giasp" + '"' + ":" + price + "," + '"' + "quantity" + '"' + ":" + quantity + "}";
        return cart;
    }

    public void add2Session(string SesId, string SesPrice, string SesQuantity)
    {

        int soluong = int.Parse(SesQuantity);
        if (!IsPostBack)
        {
            if (Session["GioHang"] != null)
            {
                cart = Session["GioHang"] as DataTable;
            }
            else
            {
                cart.Rows.Clear();
                cart.Columns.Clear();
                cart.Columns.Add("masp", typeof(int));
                cart.Columns.Add("gia", typeof(double));
                cart.Columns.Add("quantity", typeof(int));
                cart.Columns.Add("TongTien", typeof(double), "soluong * gia");

                bool isExited = false;

                //kiem tra. ton tai thi cong them so luong
                foreach (DataRow dr in cart.Rows)
                {
                    if (dr["masp"].ToString() == SesId)
                    {
                        dr["quantity"] = int.Parse(dr["quantity"].ToString()) + soluong;
                        isExited = true;
                        break;
                    }
                }


                if (!isExited)// chua ton tai thi them moi gio hang
                {
                    DataRow dr = cart.NewRow();

                    dr["masp"] = SesId;
                    dr["gia"] = SesPrice;
                    dr["quantity"] = SesQuantity;

                    cart.Rows.Add(dr);

                }

                Session["GioHang"] = cart;
            }

        }


    }



   
}