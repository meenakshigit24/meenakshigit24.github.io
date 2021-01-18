using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace EOWwebpage
{
    public partial class Dashbord : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["EowCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                PopulateGridView();
            }
            
            if (Session["UserName"] == null)
                Response.Redirect("LoginForm.aspx");
            lbluserdetails.Text = "Username: " + Session["UserName"];
        }
        void PopulateGridView()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(CS))
            {
                sqlcon.Open(); ;
                SqlDataAdapter sqlDA = new SqlDataAdapter("select * from EOWClientDetail", sqlcon);

                sqlDA.Fill(dtbl);


            }
            if (dtbl.Rows.Count > 0)
            {
                GVEOWClientdetail.DataSource = dtbl;
                GVEOWClientdetail.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GVEOWClientdetail.DataSource = dtbl;
                GVEOWClientdetail.DataBind();
                GVEOWClientdetail.Rows[0].Cells.Clear();
                GVEOWClientdetail.Rows[0].Cells.Add(new TableCell());
                GVEOWClientdetail.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GVEOWClientdetail.Rows[0].Cells[0].Text = "No Data Found....!";
                GVEOWClientdetail.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }


          
       
        }

        protected void GVEOWClientdetail_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GVEOWClientdetail.EditIndex = e.NewEditIndex;
            PopulateGridView();
        }

        protected void GVEOWClientdetail_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GVEOWClientdetail.EditIndex = -1;
            PopulateGridView();
        }

        protected void GVEOWClientdetail_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using(SqlConnection sqlcon=new SqlConnection(CS))
                {
                    sqlcon.Open();
                    SqlCommand sqlcmd = new SqlCommand("EOWUpdateDetails", sqlcon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@TowerName", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtTowerName")as TextBox).Text.Trim());  
                    sqlcmd.Parameters.AddWithValue("@FlatNo", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtFlatNo") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@FullName1stApplicant", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtFullName1stApplicant") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@FullName2ndApplicant", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtFullName2ndApplicant") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@FullAddressforCommunication", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtFullAddressforCommunication") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Pincode", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtPincode") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@EmailID", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtEmailID") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@MobileNumber", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtMobileNumber") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@OriginalAreaofFlatasPerBBASqft", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtOriginalAreaofFlatasPerBBASqft") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@TotalCostofFlat", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtTotalCostofFlat") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@TotalPaid", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtTotalPaid") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@DidYouPayAnyamountAfterMay2018ToAIRWIL", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtaftermay18") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@IfYesPleaseEnterHowMuchTotalPaidAfterMay2018", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtifyes") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@DidYouPayAnythingForExtraSuperAreaDemand", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txtpayextra") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@IfYesThenHowMuchYouPaidForExtraSuperAre", (GVEOWClientdetail.Rows[e.RowIndex].FindControl("txthowmuch") as TextBox).Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(GVEOWClientdetail.DataKeys[e.RowIndex].Value.ToString()));

                    sqlcmd.ExecuteNonQuery();
                    GVEOWClientdetail.EditIndex = -1;
                    PopulateGridView();
                    lblSuccessMessage.Text = "Records Updated.......";
                    lblErrorMessage.Text = "";




                }
            }
            catch(Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginForm.aspx");
        }

        protected void GVEOWClientdetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlcon = new SqlConnection(CS))
                {
                    sqlcon.Open();
                    string query = "Delete from EOWClientDetail where UserID=@UserID";
                    SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                    sqlcmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(GVEOWClientdetail.DataKeys[e.RowIndex].Value.ToString()));
                    sqlcmd.ExecuteNonQuery();
                    PopulateGridView();
                    lblSuccessMessage.Text = "Record Deleted.......";
                    lblErrorMessage.Text = "";




                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }

        }
    }
}