using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class registerform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {

        }
    }
    protected void Unnamed9_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf; Integrated Security = True"))
        {

            /* string name = Convert.ToString(f_name.Text) + " " + Convert.ToString(l_name.Text);*/
            SqlCommand sqlCmd = new SqlCommand("INSERT INTO users (name,l_name,gender,birthdate,mail_id,username,password) VALUES (@name, @l_name, @gender, @birthdate, @mail_id, @username, @password)", con);
            con.Open();

            sqlCmd.Parameters.AddWithValue("@name", f_name.Text);
            sqlCmd.Parameters.AddWithValue("@l_name", l_name.Text);
            sqlCmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Text);
            sqlCmd.Parameters.AddWithValue("@mail_id", email.Text);
            sqlCmd.Parameters.AddWithValue("@birthdate", TxtDob.Text);

            SqlCommand sqlCmd01 = new SqlCommand("SELECT COUNT(1) FROM users WHERE username = @username1", con);
            sqlCmd01.Parameters.AddWithValue("@username1", reg_username.Text);
            int COUNT = Convert.ToInt32(sqlCmd01.ExecuteScalar());
            if (COUNT != 1)
            {
                

                sqlCmd.Parameters.AddWithValue("@username", reg_username.Text);
                sqlCmd.Parameters.AddWithValue("@password", password2.Text);

                int i = Convert.ToInt32(sqlCmd.ExecuteNonQuery());
                if (i != 0)
                {
                    f_name.Text = l_name.Text = TxtDob.Text = email.Text = username.Text = password1.Text = password2.Text = "";
                    Response.Redirect("login.aspx");
                }
                else
                {
                    submit_result.Visible = true;
                    submit_result.Text = "Submission Failed";
                }
            }
            else
            {
                username_validate2.Text = "Please Enter any other username";
            }
        }
    }


    protected void Unnamed10_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}


