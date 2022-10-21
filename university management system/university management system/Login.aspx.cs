using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace university_management_system
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
    
           
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataAdapter sda = new SqlDataAdapter("select * from registration where Fname='" + loginfname.Text + "' and Password='" + loginpassword.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Session["name"] = loginfname.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                Label3.Text="Username or password is incorrect";
            }
        }
    }
}