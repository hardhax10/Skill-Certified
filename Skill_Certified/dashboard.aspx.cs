using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adminpanel_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string user = Convert.ToString(Session["username"]);
            if (user == "admin@hardik" || user == "admin@jaya" || user == "admin@nenaram")
            {
                login.Text = Convert.ToString(Session["NAME"]);
                userimage.ImageUrl = Convert.ToString(Session["IMAGE"]);
                username.Text = Convert.ToString(Session["NAME"]);
                nav_logout.Text = "Logout";
                nav_logout.Visible = true;
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
                {
                    sqlCon.Open();

                    string query1 = "SELECT COUNT(*) FROM users";
                    SqlCommand sqlCmd = new SqlCommand(query1, sqlCon);
                    int COUNT = Convert.ToInt32(sqlCmd.ExecuteScalar()) - 3;
                    user_count.Text = Convert.ToString(COUNT);

                    string query2 = "SELECT COUNT(*) FROM users_buy";
                    SqlCommand sqlCmd2 = new SqlCommand(query2, sqlCon);
                    int COUNT2 = Convert.ToInt32(sqlCmd.ExecuteScalar());
                    buy_count.Text = Convert.ToString(COUNT2);

                }
                nav_logout.Visible = true;
                login.Text= Convert.ToString(Session["NAME"]);
                userimage.ImageUrl= Convert.ToString(Session["IMAGE"]);
                username.Text = Convert.ToString(Session["NAME"]);
            }
            else
            {
                Response.Redirect("error.aspx");
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


    protected void nav_logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}
