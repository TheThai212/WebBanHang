using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.SessionState;


public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public void add2Cart(string id, string price, string quantity)
    {

        Session["Name"] = "allooo";

        Response.Write(Session);
    }
}