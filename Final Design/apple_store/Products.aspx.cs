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

public partial class Products : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;

    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select name,pro_img,price from product";
        dt = obj.get_data(q);
        DataList1.DataSource = dt;
        DataList1.DataBind();

    }
        
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        Session["show_pro"] = e.CommandArgument;
        Response.Redirect("show_pro_detail.aspx");
    }
    protected void LinkButton2_Command(object sender, CommandEventArgs e)
    {
        Session["show_pro"] = e.CommandArgument;
        if (Session["login"] != null)
        {
            Response.Redirect("show_pro_detail.aspx");
        }
        else
        {
            Response.Redirect("client_login.aspx");
        }

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
