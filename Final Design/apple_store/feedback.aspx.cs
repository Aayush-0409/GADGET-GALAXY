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

public partial class feedback : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string date=DateTime.Now.Day+"/"+DateTime.Now.Month+"/"+DateTime.Now.Year;
        q="insert into feedback values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+date+"')";
        obj.action_query(q);
        TextBox1.Text="";
        TextBox2.Text="";
        TextBox3.Text="";
        TextBox4.Text="";
        TextBox5.Text="";
        TextBox6.Text="";
    }
}
