using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace university_management_system
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Faculty.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_Faculty.aspx");
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            Response.Redirect("Display_Faculty.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}