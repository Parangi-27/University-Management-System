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
    public partial class Add_Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "Insert into Faculty(Pname,Dept,Quali,Exp) VALUES(@Pname,@Dept,@Quali,@Exp)";

            if (pname.Text == "" || dept.Text == "" || quali.Text == "" || exp.Text == "")
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
                            cmd.Parameters.AddWithValue("@Pname", pname.Text);
                            cmd.Parameters.AddWithValue("@Dept", dept.Text);
                            cmd.Parameters.AddWithValue("@Quali", quali.Text);
                            cmd.Parameters.AddWithValue("@Exp", exp.Text);

                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            //Response.Redirect("login.aspx");
                            Label1.Text = "Successfully added";
                            pname.Text = "";
                            dept.Text = "";
                            quali.Text = "";
                            exp.Text = "";
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