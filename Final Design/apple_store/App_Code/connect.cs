using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public class connect
{
       
       SqlConnection cn;
       SqlCommand cm;
       SqlDataAdapter da;
       DataTable dt;
        static public string curr_button;
        static public string gid;
        static public string u;

        public connect()
        {
            cn = new SqlConnection(@"Data Source=LENOVO_IDEAPAD3\SQLEXPRESS;Initial Catalog='D:\FINAL SEM PROJ\6TH SEM PROJECT-20250224T125713Z-001 (1)\6TH SEM PROJECT\APPLE_STORE\APP_DATA\APP_STORE.MDF';Integrated Security=True");
            cn.Open();
        }
        public DataTable get_data(String q)
        {
           
            da = new SqlDataAdapter(q, cn);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void action_query(String q)
        {
            cm = new SqlCommand(q, cn);
            cm.ExecuteNonQuery();
        }
        
}
