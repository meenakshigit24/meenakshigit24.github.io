using System;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EOWwebpage
{
    public partial class DetailForm : System.Web.UI.Page
    {
        string Cs = ConfigurationManager.ConnectionStrings["EowCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (txtFlatNo.Text == "" || txt1stAName.Text == "" || txt2ndAName.Text == "" || txtAddress.Text == "" || txtPincode.Text == "" ||
               txtemail.Text == "" || txtmobileNumber.Text == "" || txtOriginalArea.Text == "" || txtTotalCost.Text == "" || txtTotalPaid.Text == "" ||
               txtpaidaftermay18.Text == "" || txtpaidExtra.Text == "")
                lblErrorMessage.Text = "Please Enter Mandatory Fields";
            else
            {
                using (SqlConnection Con = new SqlConnection(Cs))
                {
                    Con.Open(); 
                    SqlCommand sqlCmd = new SqlCommand("EOWAddDetails", Con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0": hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("@TowerName", rbtowername.SelectedValue.Trim());
                    sqlCmd.Parameters.AddWithValue("@FlatNo", txtFlatNo.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@FullName1stApplicant", txt1stAName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@FullName2ndApplicant", txt2ndAName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@FullAddressforCommunication", txtAddress.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Pincode", txtPincode.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@EmailID", txtemail.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@MobileNumber", txtmobileNumber.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@OriginalAreaofFlatasPerBBASqft", txtOriginalArea.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@TotalCostofFlat", txtTotalCost.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@TotalPaid", txtTotalPaid.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@DidYouPayAnyamountAfterMay2018ToAIRWIL", rbpaidaftermay18.SelectedValue.Trim());
                    sqlCmd.Parameters.AddWithValue("@IfYesPleaseEnterHowMuchTotalPaidAfterMay2018", txtpaidaftermay18.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@DidYouPayAnythingForExtraSuperAreaDemand", rbPaidExtra.SelectedValue.Trim());
                    sqlCmd.Parameters.AddWithValue("@IfYesThenHowMuchYouPaidForExtraSuperAre", txtpaidExtra.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    clear();
                    lblSuccessMessage.Text = "Submitted Sucessfully";
                }
            }
        }

        void clear()
        {
            txtFlatNo.Text = txt1stAName.Text = txt2ndAName.Text = txtAddress.Text = txtPincode.Text = txtemail.Text = txtmobileNumber.Text = txtOriginalArea.Text
                = txtTotalCost.Text = txtTotalPaid.Text = txtpaidaftermay18.Text = txtpaidExtra.Text = "";
            hfUserID.Value = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            submit.Text="Save";
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/EOWUpload/" + FileUpload1.FileName));
                lblMessage.Text = "File Uploaded.....";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Please Select a file to Upload";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}