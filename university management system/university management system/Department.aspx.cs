using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace university_management_system
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_dept.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("update_dept.aspx");
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            Response.Redirect("Display_Department.aspx");
        }
    }
}