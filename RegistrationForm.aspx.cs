using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace EOWwebpage
{
    public partial class RegistrationForm : System.Web.UI.Page
        
    {
        string CS= ConfigurationManager.ConnectionStrings["EowCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                clear();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }
        
        public void clear()
        {
            hfUserID.Value = "";
            txtFirstName.Text = txtLastName.Text=txtcontact.Text=txtaddress.Text=txtusername.Text=txtpassword.Text=txtconfirmpassword.Text="";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";



        }

        [Obsolete]
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (txtusername.Text == "" || txtpassword.Text == "")
                    lblErrorMessage.Text = "Please fill mandatory Fields";


                else if (txtpassword.Text != txtconfirmpassword.Text)
                    lblErrorMessage.Text = "Password do not match";
                else
                {
                    using (SqlConnection Con = new SqlConnection(CS))
                    {
                        Con.Open(); 
                        SqlCommand sqlCmd = new SqlCommand("EOWlogin1", Con);
                        sqlCmd.CommandType = CommandType.StoredProcedure;
                        string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "SHA1");

                        sqlCmd.Parameters.AddWithValue("@UserID", (hfUserID.Value == "" ? 0 : Convert.ToInt32(hfUserID.Value)));
                        sqlCmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Contact", txtcontact.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Gender", rbgender.SelectedValue.Trim());
                        sqlCmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@UserName", txtusername.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", EncryptedPassword);
                        int Returncode = (int)sqlCmd.ExecuteScalar();
                        if (Returncode == -1)
                        {
                            lblErrorMessage.Text = "User Name already in use, please choose another user name";
                        }
                        else
                        {
                            Response.Redirect("~/LoginForm.aspx");
                            
                        }
                    }
                }
            }
        }
    }
}