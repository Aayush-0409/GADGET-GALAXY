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

public partial class admin_login : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        q="select * from admin where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'";
        dt = obj.get_data(q);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("~/admin_home.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }
}
