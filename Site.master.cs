using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        //string ten = Request.Form["LoginFormName"];
        //string pass = Request.Form["LoginFormPass"];
        //string select = "SELECT Id, Name, Pass" +" FROM users WHERE Name=@username and Pass=@password";
        string insert = "INSERT INTO users (Id,Name,Pass) VALUES(@id,@username,@password)";
        
        SqlCommand cmd = new SqlCommand(insert, conn);
        //-- thêm giá trị cho DB
        cmd.Parameters.AddWithValue("@id", "4");
        cmd.Parameters.AddWithValue("@username", LoginFormName.Text);
        cmd.Parameters.AddWithValue("@password", LoginFormPass.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("Process.aspx");
        conn.Close();
    }
}
