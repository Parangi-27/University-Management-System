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
    public partial class add_dept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "Insert into Dept(Dept,Hod) VALUES(@Dept,@Hod)";

            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label1.Text = "Enter Proper Information";
            }
            else
            {
                try
                {
                    using (con)
                    {
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Parameters.AddWithValue("@Dept", TextBox1.Text);
                            cmd.Parameters.AddWithValue("@Hod", TextBox2.Text);
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            //Response.Redirect("login.aspx");
                            Label1.Text = "Department added successfully";
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Errors: " + ex.Message);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}