using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CarRental
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
               // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlDataSourceRegistration"].ConnectionString);

                SqlConnection conn = new SqlConnection(
                                       ConfigurationManager.
                                       ConnectionStrings["RegistrationConnectionString"].
                                       ConnectionString);

                conn.Open();

                string checkuser = "select count(*) from UserData where name = '" + TextBoxLogin.Text + "'";

                SqlCommand com = new SqlCommand(checkuser, conn);
                int Temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if(Temp == 1)
                {
                    Response.Write("1.User already exist \n");
                }
                conn.Close();
            }
            if(!Page.IsPostBack)
            {
               // Response.Clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlDataSourceRegistration"].ConnectionString);
                SqlConnection conn = new SqlConnection(
                                       ConfigurationManager.
                                       ConnectionStrings["RegistrationConnectionString"].
                                       ConnectionString);
                conn.Open();

                string checkuser = "select count(*) from UserData where name = '" + TextBoxLogin.Text + "'";
                SqlCommand comm = new SqlCommand(checkuser, conn);
                int Temp = Convert.ToInt32(comm.ExecuteScalar().ToString());

                if (Temp == 1)
                {
                    Response.Write("2.User already exist \n");
                }
                if (Temp == 0)
                {
                    string insertQuery = "insert into UserData (Login, Name, Surname, Password, Email) values (@login, @name, @surname, @password, @email)";

                    SqlCommand com = new SqlCommand(insertQuery, conn);

                    com.Parameters.AddWithValue("@login", TextBoxLogin.Text);
                    com.Parameters.AddWithValue("@name", TextBoxName.Text);
                    com.Parameters.AddWithValue("@surname", TextBoxSurname.Text);
                    com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
                    com.Parameters.AddWithValue("@email", TextBoxEmail.Text);

                    //Response.Redirect("DBTest.aspx");
                    Response.Write("Zarejestrowano");

                    com.ExecuteNonQuery();
                }
                conn.Close();


            }
            catch(Exception ex)
            {
                Response.Write("ERROR " + ex.ToString());
            }


            TextBoxLogin.Text = "";
            TextBoxName.Text = "";
            TextBoxSurname.Text = "";
            TextBoxPassword.Text = "";
            TextBoxEmail.Text = "";
        }

    }
}