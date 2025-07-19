using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class client_login : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        q = "select * from client_detail where user_id='" + TextBox2.Text + "' and password='" + TextBox1.Text + "'";
        dt = obj.get_data(q);
        if (dt.Rows.Count > 0)
        {
            Session["login"] = true;
            Session["uid"] = TextBox2.Text;
            if (Session["show_pro"] != null)
            {
                Response.Redirect("~/Products.aspx");
            }
            else
            {
                Response.Redirect("~/index.aspx");
            }

        }
        else
        {
            Label1.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("client_reg.aspx");
    }
}

