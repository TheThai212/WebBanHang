using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnGui_Click(object sender, EventArgs e)
    {
        Response.Write("<script> alert('Đã gửi')</script>");
    }
}