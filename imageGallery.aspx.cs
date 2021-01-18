using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOWwebpage
{
    public partial class imageGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Image1.ImageUrl = Request.QueryString["ImageURL"];
        }

        protected void btnimage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EOWGallery.aspx");
        }
    }
}