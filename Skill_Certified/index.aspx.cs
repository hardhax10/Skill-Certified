using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            if (Session["username"] != null)
            {
                if (Session["username"].ToString() == "admin@hardik" || Session["username"].ToString() == "admin@jaya" || Session["username"].ToString() == "admin@nenaram")
                {
                    dashboard.Visible = true;
                }
                sqlCon.Open();

                string QUERY1 = "SELECT image FROM users WHERE username=@username";
                SqlCommand sqlCmd = new SqlCommand(QUERY1, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", Session["username"]);
                string IMAGE = Convert.ToString(sqlCmd.ExecuteScalar());

                string QUERY2 = "SELECT name FROM users WHERE username=@username";
                SqlCommand sqlCmd2 = new SqlCommand(QUERY2, sqlCon);
                sqlCmd2.Parameters.AddWithValue("@username", Session["username"]);
                string NAME = Convert.ToString(sqlCmd2.ExecuteScalar());
                Session["NAME"] = NAME;
                Session["IMAGE"] = IMAGE;
                if (IMAGE != "")
                {
                    userimage.ImageUrl = IMAGE;
                }
                else
                {
                    IMAGE = "images/user.png";
                    userimage.ImageUrl = IMAGE;
                }
                username.Text = NAME;

                /*login button*/

                login.Text = NAME;
                nav_logout.Text = "Logout";
                nav_logout.Visible = true;
                reg_button.Visible = false;
            }
            else
            {
                userimage.ImageUrl = "images/user.png";
                username.Text = "Sign In";
                login.Text = "Login";
                reg_button.Visible = true;
            }
        }
    }

    protected void login_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
           Response.Redirect("profile.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}