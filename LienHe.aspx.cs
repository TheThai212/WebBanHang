using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LienHe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnGui_Click1(object sender, EventArgs e)
    {
//<<<<<<< HEAD
        Response.Write("<script> alert('Đã gửi')</script>");
//=======
        //Label1.Text = "Đã gửi";
    }
    protected void btnDemo_Click(object sender, EventArgs e)
    {
        Label1.Text = "abc";
        Label2.Text = "aaa";
//>>>>>>> fcce7815cb74533a97424d2cd23a9f7f4c86b8aa
    }
}