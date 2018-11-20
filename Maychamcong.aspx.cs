using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maychamcong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM sanpham WHERE madm = 3 ", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "sanpham");
            DataList1.DataSource = ds.Tables["sanpham"];
            DataList1.DataBind();
        }
    }
}