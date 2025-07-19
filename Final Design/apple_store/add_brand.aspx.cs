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

public partial class add_brand : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select max(bid)+1 from brand";
        dt = obj.get_data(q);
        if (dt.Rows[0][0] == DBNull.Value)
            TextBox1.Text = "1";
        else
            TextBox1.Text = dt.Rows[0][0].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        q="insert into brand values('"+TextBox1.Text+"','"+TextBox2.Text+"')";
        obj.action_query(q);
        Response.Redirect("~/admin_home.aspx");
    }
}
