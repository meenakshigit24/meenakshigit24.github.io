using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;

namespace EOWwebpage
{
    public partial class LoginForm : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["EowCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblerrormessage.Visible = false;
        }

        [Obsolete]
        protected void btnlogin_Click(object sender, EventArgs e)
        {
              using(SqlConnection con=new SqlConnection(CS))
            {
                con.Open();
                String query = "select Count(1) from EOWLoginPage where UserName=@UserName and Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "SHA1");

                cmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim() );
                cmd.Parameters.AddWithValue("@Password", EncryptedPassword);
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count==1)
                {
                    Session["Username"] = txtusername.Text.Trim();
                    Response.Redirect("Dashbord.aspx");
                } 
                else
                {
                    lblerrormessage.Visible = true;
                }
            }
        }
    }
}