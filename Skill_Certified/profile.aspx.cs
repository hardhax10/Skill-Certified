using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            login.Text = Convert.ToString(Session["NAME"]);
            pro_name.Text = Convert.ToString(Session["NAME"]);
            if (Session["IMAGE"] != null || Session["NAME"] != null)
            {
                profiles.ImageUrl = Convert.ToString(Session["IMAGE"]);
                userimage.ImageUrl= Convert.ToString(Session["IMAGE"]);
                username.Text= Convert.ToString(Session["NAME"]);
            }
            else
            {
                profiles.ImageUrl = "images/user.png";
            }
            pro_det_username.Text = Convert.ToString(Session["username"]);

            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
            {
                sqlCon.Open();
                
                string query1 = "SELECT gender FROM users WHERE username=@username";
                SqlCommand sqlCmd = new SqlCommand(query1,sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", Session["username"]);
                string gender = Convert.ToString(sqlCmd.ExecuteScalar());

                string query2 = "SELECT birthdate FROM users WHERE username=@username";
                SqlCommand sqlCmd2 = new SqlCommand(query2, sqlCon);
                sqlCmd2.Parameters.AddWithValue("@username", Session["username"]);
                string dob = Convert.ToString(sqlCmd2.ExecuteScalar());

                string query3 = "SELECT mail_id FROM users WHERE username=@username";
                SqlCommand sqlCmd3 = new SqlCommand(query3, sqlCon);
                sqlCmd3.Parameters.AddWithValue("@username", Session["username"]);
                string mail = Convert.ToString(sqlCmd3.ExecuteScalar());

                string query4 = "SELECT l_name FROM users WHERE username=@username";
                SqlCommand sqlCmd4 = new SqlCommand(query4, sqlCon);
                sqlCmd4.Parameters.AddWithValue("@username", Session["username"]);
                string last = Convert.ToString(sqlCmd4.ExecuteScalar());
                string NAME = Convert.ToString(Session["NAME"]) +" "+last;
                pro_det_name.Text = NAME;
                pro_det_gender.Text = gender;
                pro_det_age.Text = dob;
                pro_det_mail.Text = mail;
                
            }
        }

    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
}