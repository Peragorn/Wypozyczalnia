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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_LogIN_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(
           ConfigurationManager.
           ConnectionStrings["RegistrationConnectionString"].
           ConnectionString);

            conn.Open();

            string checkuser = "select count(*) from UserData where name = '" + TextBox_Login.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, conn);
            int Temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            conn.Close();
            if (Temp == 1)
            {
                conn.Open();

                string checkPasswordQuery = "select Password from UserData where password ='" + TextBox_Password.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);

                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox_Password.Text)
                {
                    Session["New"] = TextBox_Login.Text;
                    Response.Write("Hasło jest poprawne!");
                }
                else
                {
                    Response.Write("Hasło jest niepoprawne!");
                    //Response.Write("\t"+TextBox_Password.Text);
                    // Response.Write("\t" + password);
                }
            }
            else
            {
                Response.Write("Login jest niepoprawny!");
            }
            conn.Close();

            TextBox_Login.Text = "";
            TextBox_Password.Text = "";
        }

    }
}