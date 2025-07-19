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

public partial class add_prouct : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack != true)
        {
            q = "select max(pid)+1 from product";
            dt = obj.get_data(q);
            if (dt.Rows[0][0] == DBNull.Value)
                TextBox1.Text = "1";
            else
                TextBox1.Text = dt.Rows[0][0].ToString();
        }
        q = "select cname from cat";
        dt = obj.get_data(q);
        if(dt.Rows[0][0]!=DBNull.Value)
        {
            int c = dt.Rows.Count;
            for (int i = 0; i < c;i++)
            {
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = MapPath("~/products/") + TextBox1.Text + ".jpg";
        FileUpload1.PostedFile.SaveAs(path);
        path = "~/products/" + TextBox1.Text + ".jpg";

        q="insert into product values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+path+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+DropDownList2.SelectedValue+"')";
        obj.action_query(q);
        Response.Redirect("~/admin_home.aspx");
    }
}
