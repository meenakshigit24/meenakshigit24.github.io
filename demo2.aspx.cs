using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace EOWwebpage
{
    public partial class demo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS=ConfigurationManager.ConnectionStrings["EowCS"].ConnectionString;

            using(SqlConnection con=new SqlConnection(CS))
            {
                con.Open();
                String query = "select * from EOWLoginPage";
                SqlCommand cmd = new SqlCommand(query, con);
                DropDownList1.DataSource=cmd.ExecuteReader();
                DropDownList1.DataBind();

            }

        }

        
    }
}