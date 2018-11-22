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
        string cart = "{"+'"'+"masp"+'"'+":"+id+ "," + '"' + "giasp" + '"' + ":" + price + "," + '"' + "quantity" + '"' + ":" + quantity + "}";
        return cart;
    }


}