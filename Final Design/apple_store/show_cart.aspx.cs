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

public partial class show_cart : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt;
    string q;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["wdt"] != null)
        {
            GridView1.DataSource = (DataTable)Session["wdt"];
            GridView1.DataBind();
            //Label2.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();

        dt = (DataTable)Session["wdt"];
        dt.Rows[e.RowIndex].Delete();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Session["wdt"] = dt;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ono;
        q = "select max(ono)+1 from shop_master";
        dt = obj.get_data(q);
        if (dt.Rows[0][0] == DBNull.Value)
        {
            ono = "1";
            //Label2.Visible = true;
        }
        else
            ono = dt.Rows[0][0].ToString();

        int total = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            total = total + Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);
        }


        q = "insert into shop_master values('" + ono + "','" + Session["uid"].ToString() + "','" + total + "')";
        obj.action_query(q);


        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            q = "insert into shop_detail values('" + ono + "','" + GridView1.Rows[i].Cells[1].Text + "','" + GridView1.Rows[i].Cells[2].Text + "')";
            obj.action_query(q);
        }

       // Session.Remove("wdt");
        Label2.Visible = true;
        //Response.Redirect("~/Products.aspx");
        GridView1.DataSource = null;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // Session.Remove("wdt");
        Response.Redirect("~/Products.aspx");
        
    }
}
