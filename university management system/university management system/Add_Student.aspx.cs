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
    public partial class Add_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "Insert into Student(StudentName,Semester,Year,Department,Course,Seat,Phone) VALUES(@StudentName,@Semester,@Year,@Department,@Course,@Seat,@Phone)";

            if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || DropDownList1.SelectedItem.Value == "" || TextBox8.Text == "")
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
                            cmd.Parameters.AddWithValue("@Studentname", TextBox2.Text);
                            cmd.Parameters.AddWithValue("@Semester", TextBox3.Text);
                            cmd.Parameters.AddWithValue("@Year", TextBox4.Text);
                            cmd.Parameters.AddWithValue("@Department", TextBox5.Text);
                            cmd.Parameters.AddWithValue("@Course", TextBox6.Text);
                            cmd.Parameters.AddWithValue("@Seat", DropDownList1.SelectedItem.Value);
                            cmd.Parameters.AddWithValue("@Phone", TextBox8.Text);
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            //Response.Redirect("login.aspx");
                            Label1.Text = "student added successfully";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox8.Text = "";
                            DropDownList1.SelectedItem.Value = "";
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Errors: " + ex.Message);
                }
            }
        }
    }
}