using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class databaseview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void show_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\HARDIK\BCA\BCA 3\PROJECT\Skill_Certified\App_Data\skill_certified.mdf;Integrated Security=True"))
        {
            sqlCon.Open();
            string QUERY1;
            if (tablename.SelectedItem.Value == "users")
            {
                QUERY1 = "SELECT * FROM users";
                SqlCommand sqlCmd = new SqlCommand(QUERY1, connection: sqlCon);

                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    table_show.DataSource = dr;
                    table_show.DataBind();
                }
            }
            else if (tablename.SelectedItem.Value == "course")
            {
                QUERY1 = "SELECT * FROM course";
                SqlCommand sqlCmd = new SqlCommand(QUERY1, connection: sqlCon);

                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    table_show.DataSource = dr;
                    table_show.DataBind();
                }
            }
            else if (tablename.SelectedItem.Value == "users_buy")
            {
                QUERY1 = "SELECT * FROM users_buy";
                SqlCommand sqlCmd = new SqlCommand(QUERY1, connection: sqlCon);

                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    table_show.DataSource = dr;
                    table_show.DataBind();
                }
            }
            
            /*
            string bind = Convert.ToString(sqlCmd.ExecuteScalar());
            GridView1.DataSource = bind;
            */

        }
    }
}