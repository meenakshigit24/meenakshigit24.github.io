using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;

namespace EOWwebpage
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                try
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("narang.meenakshi6@gmail.com");
                    mailMessage.To.Add("narang.meenakshi6@gmail.com");
                    mailMessage.Subject = txtSubject.Text;
                    mailMessage.Body = "<b>Sender Name:-<b>" + txtName.Text + "<br />"
                        + "<b>Sender Email:</b>" + txtEmail.Text + "<br/>"
                                + "<b>Comments:</b>" + txtComments.Text;
                    mailMessage.IsBodyHtml = true;
            
                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587)
                    {
                        EnableSsl = true,
                        Credentials =
                        new System.Net.NetworkCredential("narang.meenakshi6@gmail.com", "gmail123,./")
                    };
                    smtpClient.Send(mailMessage);

                    Label1.ForeColor = System.Drawing.Color.Blue;
                    Label1.Text = "Thank you for Contacting us";
                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtComments.Enabled = false;
                    txtSubject.Enabled = false;
                    Button1.Enabled = false;
                }
                catch (Exception)
                {
                    //log- Event Viewer or table
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "There is an unknown problem....please try later";

                }
            }

        }
        }
        
    }
