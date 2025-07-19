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

public partial class show_pro_detail : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt,dt1;
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select * from product where name='" + Session["show_pro"].ToString() + "'";
        dt = obj.get_data(q);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][1].ToString();
            Label2.Text = dt.Rows[0][4].ToString();
            Label3.Text = dt.Rows[0][5].ToString();
            Image1.ImageUrl = dt.Rows[0][2].ToString();

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["wdt"] != null)
        {
            dt1 = (DataTable)Session["wdt"];

        }
        if(dt1==null)
        {
          dt1 = new DataTable("shopping");
          dt1.Columns.Add("name");
          dt1.Columns.Add("price");
          dt1.Columns.Add("brand_name");
          dt1.Columns.Add("pro_img");
        }
        dt1.LoadDataRow(new object[]{Label1.Text,Label2.Text,Label3.Text,Image1.ImageUrl},false);
      Session["wdt"] = dt1;
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/show_cart.aspx");
    }
}
