using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class SCPU_buy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void scbuy_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();
            string QUERY = "INSERT INTO users_buy (user_id,course_id) VALUES ((SELECT user_id FROM users WHERE username=@username) , 2)";
            SqlCommand sqlCmd = new SqlCommand(QUERY, sqlCon);
            sqlCmd.Parameters.AddWithValue("@username", Session["username"].ToString());
            sqlCmd.ExecuteScalar();

        }
    }
}