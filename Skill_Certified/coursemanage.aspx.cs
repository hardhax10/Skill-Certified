using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class courseedit : System.Web.UI.Page
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

            string query1 = "SELECT COUNT(*) FROM course WHERE course_id=@course_id AND course_name=@course_name";
            SqlCommand sqlCmd = new SqlCommand(query1, sqlCon);
            sqlCmd.Parameters.AddWithValue("@course_id", course_id.Text);
            sqlCmd.Parameters.AddWithValue("@course_name", course_name.Text);
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count != 0)
            {
                string query = "SELECT course_id FROM course WHERE course_id=@course_id AND course_name=@course_name";
                SqlCommand sqlCmd0 = new SqlCommand(query, sqlCon);
                sqlCmd0.Parameters.AddWithValue("@course_id", course_id.Text);
                sqlCmd0.Parameters.AddWithValue("@course_name", course_name.Text);
                string courseid = Convert.ToString(sqlCmd0.ExecuteScalar());
                courseid_show.Text = courseid;

                string query2 = "SELECT course_name FROM course WHERE course_id=@course_id AND course_name=@course_name";
                SqlCommand sqlCmd2 = new SqlCommand(query2, sqlCon);
                sqlCmd2.Parameters.AddWithValue("@course_id", course_id.Text);
                sqlCmd2.Parameters.AddWithValue("@course_name", course_name.Text);
                string coursename = Convert.ToString(sqlCmd2.ExecuteScalar());
                coursename_show.Text = coursename;

                string query3 = "SELECT course_duration FROM course WHERE course_id=@course_id AND course_name=@course_name";
                SqlCommand sqlCmd3 = new SqlCommand(query3, sqlCon);
                sqlCmd3.Parameters.AddWithValue("@course_id", course_id.Text);
                sqlCmd3.Parameters.AddWithValue("@course_name", course_name.Text);
                string courseduration = Convert.ToString(sqlCmd3.ExecuteScalar());
                duration_show.Text = courseduration;

                string query4 = "SELECT course_fee FROM course WHERE course_id=@course_id AND course_name=@course_name";
                SqlCommand sqlCmd4 = new SqlCommand(query4, sqlCon);
                sqlCmd4.Parameters.AddWithValue("@course_id", course_id.Text);
                sqlCmd4.Parameters.AddWithValue("@course_name", course_name.Text);
                string coursefee = Convert.ToString(sqlCmd4.ExecuteScalar());
                fee_show.Text = coursefee;

            }
            else
            {
                Response.Write("<script>alert('Invalid Course Id or Course Name!')</script>");
            }
            course_id.Text = "";
            course_name.Text = "";
        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query5 = "INSERT INTO course(course_id,course_name,course_duration,course_fee) VALUES (@course_id,@course_name,@course_duration,@course_fee)";
            SqlCommand sqlCmd5 = new SqlCommand(query5, sqlCon);
            sqlCmd5.Parameters.AddWithValue("@course_id", courseid_edit.Text);
            sqlCmd5.Parameters.AddWithValue("@course_name", coursename_edit.Text);
            sqlCmd5.Parameters.AddWithValue("@course_duration", duration_edit.Text);
            sqlCmd5.Parameters.AddWithValue("@course_fee", fee_edit.Text);
            int count = Convert.ToInt32(sqlCmd5.ExecuteScalar());
            if (count != 0)
            {
                Response.Write("<script>alert('Your data has been added !')</script>");
                course_id.Text = "";
                course_name.Text = "";
                courseid_edit.Text = "";
                coursename_edit.Text = "";
                duration_edit.Text = "";
                fee_edit.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error Occured during adding the data !')</script>");
                course_id.Text = "";
                course_name.Text = "";
                courseid_edit.Text = "";
                coursename_edit.Text = "";
                duration_edit.Text = "";
                fee_edit.Text = "";
            }
        }
    }

    protected void update_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query6 = "UPDATE course SET course_id=@course_id,course_name=@course_name,course_duration=@course_duration,course_fee=@course_fee WHERE course_id=@course_id1)";
            SqlCommand sqlCmd6 = new SqlCommand(query6, sqlCon);
            sqlCmd6.Parameters.AddWithValue("@course_id1", courseid_show.Text);
            sqlCmd6.Parameters.AddWithValue("@course_id", courseid_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@course_name", coursename_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@course_duration", duration_edit.Text);
            sqlCmd6.Parameters.AddWithValue("@course_id1", fee_edit.Text);
            int x = sqlCmd6.ExecuteNonQuery();
            if (x != 0)
            {
                Response.Write("<script>alert('Your data has been updated !')</script>");
                course_id.Text = "";
                course_name.Text = "";
                courseid_edit.Text = "";
                coursename_edit.Text = "";
                duration_edit.Text = "";
                fee_edit.Text = "";
            }
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();

            string query7 = "DELETE FROM course WHERE course_id=@course_id AND course_name=@course_name";
            SqlCommand sqlCmd7 = new SqlCommand(query7, sqlCon);
            sqlCmd7.Parameters.AddWithValue("@course_id", courseid_show.Text);
            sqlCmd7.Parameters.AddWithValue("@course_name", coursename_show.Text);
            int x = sqlCmd7.ExecuteNonQuery();
            if (x != 0)
            {
                Response.Write("<script>alert('Your data has been Deleted !')</script>");
                course_id.Text = "";
                course_name.Text = "";
                courseid_edit.Text = "";
                coursename_edit.Text = "";
                duration_edit.Text = "";
                fee_edit.Text = "";
            }
        }
    }
}