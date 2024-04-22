using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class loginform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("profile.aspx");
        }
        
    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();
            string QUERY = "SELECT COUNT(1) FROM USERS WHERE USERNAME=@username AND password=@password";
            SqlCommand sqlCmd = new SqlCommand(QUERY, sqlCon);
            sqlCmd.Parameters.AddWithValue("@username", login_username.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@password", login_password.Text.Trim());
            int COUNT = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (COUNT == 1)
            {
                Session["username"] = login_username.Text.Trim();
                if (login_username.Text == "admin@hardik" || login_username.Text == "admin@jaya" || login_username.Text == "admin@nenaram")
                {
                    Response.Redirect("index.aspx");
                }
                else 
                {
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                incorrect.Visible = true;
            }
            login_username.Text = "";
            login_password.Text = "";
            
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
}