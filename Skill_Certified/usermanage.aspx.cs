using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class useredit : System.Web.UI.Page
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
                nav_logout.Visible = true;
                nav_logout.Text = "Logout";
                login.Text = Convert.ToString(Session["NAME"]);
                userimage.ImageUrl = Convert.ToString(Session["IMAGE"]);
                username.Text = Convert.ToString(Session["NAME"]);
            }
        }
    }


    protected void search_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query1 = "SELECT COUNT(*) FROM users WHERE user_id=@user_id AND username=@user_name";
            SqlCommand sqlCmd = new SqlCommand(query1, sqlCon);
            sqlCmd.Parameters.AddWithValue("@user_id", user_id.Text);
            sqlCmd.Parameters.AddWithValue("@user_name", user_name.Text);
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count != 0)
            {
                string query = "SELECT name FROM users WHERE user_id=@user_id AND username=@user_name";
                SqlCommand sqlCmd0 = new SqlCommand(query, sqlCon);
                sqlCmd0.Parameters.AddWithValue("@user_id", user_id.Text);
                sqlCmd0.Parameters.AddWithValue("@user_name", user_name.Text);
                string name = Convert.ToString(sqlCmd0.ExecuteScalar());
                name_show.Text = name;

                string query2 = "SELECT l_name FROM users WHERE user_id=@user_id AND username=@user_name";
                SqlCommand sqlCmd2 = new SqlCommand(query2, sqlCon);
                sqlCmd2.Parameters.AddWithValue("@user_id", user_id.Text);
                sqlCmd2.Parameters.AddWithValue("@user_name", user_name.Text);
                string lname = Convert.ToString(sqlCmd2.ExecuteScalar());
                lastname_show.Text = lname;

                string query3 = "SELECT gender FROM users WHERE user_id=@user_id AND username=@user_name";
                SqlCommand sqlCmd3 = new SqlCommand(query3, sqlCon);
                sqlCmd3.Parameters.AddWithValue("@user_id", user_id.Text);
                sqlCmd3.Parameters.AddWithValue("@user_name", user_name.Text);
                string gender = Convert.ToString(sqlCmd3.ExecuteScalar());
                gender_show.Text = gender;

                string query4 = "SELECT birthdate FROM users WHERE user_id=@user_id AND username=@user_name";
                SqlCommand sqlCmd4 = new SqlCommand(query4, sqlCon);
                sqlCmd4.Parameters.AddWithValue("@user_id", user_id.Text);
                sqlCmd4.Parameters.AddWithValue("@user_name", user_name.Text);
                string birthdate = Convert.ToString(sqlCmd4.ExecuteScalar());
                dob_show.Text = birthdate;

                string query5 = "SELECT mail_id FROM users WHERE user_id=@user_id AND username=@user_name";
                SqlCommand sqlCmd5 = new SqlCommand(query5, sqlCon);
                sqlCmd5.Parameters.AddWithValue("@user_id", user_id.Text);
                sqlCmd5.Parameters.AddWithValue("@user_name", user_name.Text);
                string mail = Convert.ToString(sqlCmd5.ExecuteScalar());
                email_show.Text = mail;

                string query6 = "SELECT username FROM users WHERE user_id=@user_id AND username=@user_name";
                SqlCommand sqlCmd6 = new SqlCommand(query6, sqlCon);
                sqlCmd6.Parameters.AddWithValue("@user_id", user_id.Text);
                sqlCmd6.Parameters.AddWithValue("@user_name", user_name.Text);
                string username = Convert.ToString(sqlCmd6.ExecuteScalar());
                username_show.Text = username;

                password_show.Text = "**********";
            }
            else
            {
                Response.Write("<script>alert('Invalid Course Id or Course Name!')</script>");
            }
            user_id.Text = "";
            user_name.Text = "";
        }
    }

    protected void add_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query7 = "INSERT INTO users(name,l_name,gender,birthdate,mail_id,username,password) VALUES (@name,@l_name,@gender,@birthdate,@mail_id,@username,@password)";
            SqlCommand sqlCmd7 = new SqlCommand(query7, sqlCon);
            sqlCmd7.Parameters.AddWithValue("@name", name_edit.Text);
            sqlCmd7.Parameters.AddWithValue("@l_name", lastname_edit.Text);
            sqlCmd7.Parameters.AddWithValue("@gender", gender_edit.Text);
            sqlCmd7.Parameters.AddWithValue("@birthdate", dob_edit.Text);
            sqlCmd7.Parameters.AddWithValue("@mail_id", email_edit.Text);
            sqlCmd7.Parameters.AddWithValue("@username", username_edit.Text);
            sqlCmd7.Parameters.AddWithValue("@password", password_edit.Text);
            int count = Convert.ToInt32(sqlCmd7.ExecuteNonQuery());
            if (count != 0)
            {
                Response.Write("<script>alert('Your data has been added !')</script>");
                user_id.Text = "";
                user_name.Text = "";
                name_edit.Text = "";
                lastname_edit.Text = "";
                dob_edit.Text = "";
                gender_edit.Text = "";
                email_edit.Text = "";
                username_edit.Text = "";
                password_edit.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error Occured during adding the data !')</script>");
                user_id.Text = "";
                user_name.Text = "";
                name_edit.Text = "";
                lastname_edit.Text = "";
                dob_edit.Text = "";
                gender_edit.Text = "";
                email_edit.Text = "";
                username_edit.Text = "";
                password_edit.Text = "";
            }
        }
    }

    protected void update_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query6 = "UPDATE users SET name=@name,l_name=@l_name,gender=@gender,birthdate=@birthdate,mail_id=@mail_id,username=@username,password=@password WHERE user_id=(SELECT user_id FROM users WHERE username=@username)";
            SqlCommand sqlCmd6 = new SqlCommand(query6, sqlCon);
            sqlCmd6.Parameters.AddWithValue("@name", name_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@l_name", lastname_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@gender", gender_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@birthdate", dob_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@mail_id", email_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@username", username_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@password", password_edit.Text);
            int i=Convert.ToInt32(sqlCmd6.ExecuteNonQuery());
            if (i != 0)
            {
                Response.Write("<script>alert('Your data has been updated !')</script>");
                user_id.Text = "";
                user_name.Text = "";
                name_edit.Text = "";
                lastname_edit.Text = "";
                dob_edit.Text = "";
                gender_edit.Text = "";
                email_edit.Text = "";
                username_edit.Text = "";
                password_edit.Text = "";
            }
            else 
            {
                Response.Write("<script>alert('Error in updating the data ! ')</script>");
                user_id.Text = "";
                user_name.Text = "";
                name_edit.Text = "";
                lastname_edit.Text = "";
                dob_edit.Text = "";
                gender_edit.Text = "";
                email_edit.Text = "";
                username_edit.Text = "";
                password_edit.Text = "";
            }
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query6 = "DELETE FROM users WHERE user_id=@userid";
            SqlCommand sqlCmd6 = new SqlCommand(query6, sqlCon);
            string query = "SELECT user_id FROM users WHERE user_id=@user_id AND username=@user_name";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            sqlCmd.Parameters.AddWithValue("@user_id", user_id.Text);
            sqlCmd.Parameters.AddWithValue("@user_name", user_name.Text);
            int userid = Convert.ToInt32(sqlCmd.ExecuteNonQuery());
            sqlCmd6.Parameters.AddWithValue("@user_id", userid);
        }
    }
}