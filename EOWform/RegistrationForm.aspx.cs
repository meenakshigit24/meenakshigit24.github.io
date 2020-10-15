using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOWwebpage
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

        }
        
        public void clear()
        {
            hfUserID.Value = "";
            txtFirstName.Text = txtLastName.Text=txtcontact.Text=txtaddress.Text=txtusername.Text=txtpassword.Text=txtconfirmpassword.Text="";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";


        }
    }
}