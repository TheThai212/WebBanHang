using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;


public partial class Login2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    { 
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    con.Open();
        string sql = "select count(*) from users where Name = '" + LoginFormName.Text + "'and Pass = '" + LoginFormPass.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        if
            (cmd.ExecuteScalar().ToString() == "1")
        {
            Session["Name"] = LoginFormName.Text;
            Response.Redirect("QuanTri_TrangChu.aspx");
        }
        else
        {
            Label3.Text = "Sai tên hoặc mật khẩu";
        }

        con.Close();
    }
}