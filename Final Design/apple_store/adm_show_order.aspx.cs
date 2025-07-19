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

//public partial class adm_show_order : System.Web.UI.Page
//{
//    connect obj = new connect();
//    DataTable dt,dt1;
//    string q;
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        q = "select * from shop_master";
//        dt = obj.get_data(q);
//        GridView1.DataSource = dt;
//        GridView1.DataBind();
//        for (int i = 0; i < GridView1.Rows.Count; i++)
//        {
//            q = "select uname from client_detail where user_id='" + GridView1.Rows[i].Cells[3].Text + "'";
//            dt1=obj.get_data(q);
//            GridView1.Rows[i].Cells[3].Text = dt1.Rows[0][0].ToString();
//        }
//    }
//    protected void LinkButton6_Command(object sender, CommandEventArgs e)
//    {
//        Session["or_de"] = e.CommandArgument;
//        Response.Redirect("~/adm_order_det.aspx");
//    }
//    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
//    {

//        q = "delete from shop_master where ono='" + GridView1.Rows[e.RowIndex].Cells[2].Text+ "'";
//        obj.action_query(q);

//        q = "select * from shop_master";
//        dt=obj.get_data(q);
//        GridView1.DataSource = dt;
//        GridView1.DataBind();
//    }
//}
public partial class adm_show_order : System.Web.UI.Page
{
    connect obj = new connect();
    DataTable dt, dt1;
    string q;

    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select * from shop_master";
        dt = obj.get_data(q);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            q = "select uname from client_detail where user_id='" + GridView1.Rows[i].Cells[3].Text + "'";
            dt1 = obj.get_data(q);

            if (dt1.Rows.Count > 0) // Check if dt1 has at least one row
            {
                GridView1.Rows[i].Cells[3].Text = dt1.Rows[0][0].ToString();
            }
        }
    }

    protected void LinkButton6_Command(object sender, CommandEventArgs e)
    {
        Session["or_de"] = e.CommandArgument;
        Response.Redirect("~/adm_order_det.aspx");
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (GridView1.Rows[e.RowIndex].Cells.Count > 2) // Check if column exists
        {
            q = "delete from shop_master where ono='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'";
            obj.action_query(q);

            q = "select * from shop_master";
            dt = obj.get_data(q);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}