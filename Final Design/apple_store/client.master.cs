using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class client : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            LinkButton1.Text = "Logout";
        }
        else
        {
            LinkButton1.Text = "Login/Register";
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Logout")
        {
            Session.Remove("login");
            Session.Remove("show_pro");
            LinkButton1.Text = "Login/Register";
            Response.Redirect("~/index.aspx");
        }
        else
        {
            Response.Redirect("~/client_login.aspx");
        }
        
    }
}
