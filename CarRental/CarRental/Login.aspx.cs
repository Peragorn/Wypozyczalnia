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

            string checkuser = "select count(*) from UserData where login = '" + TextBox_Login.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, conn);
            int Temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            conn.Close();
            try
            {
                if (Temp == 1)
                {               
                    conn.Open();
                    string checkAcc = "select AccStatus from UserData where login = '" + TextBox_Login.Text + "'";
                    SqlCommand accountStatus = new SqlCommand(checkAcc, conn);

                    string accs = accountStatus.ExecuteScalar().ToString().Replace(" ", "");

                    if (accs == "True")
                    {
                        string checkPasswordQuery = "select Password from UserData where password ='" + TextBox_Password.Text + "'" + "AND login = '" + TextBox_Login.Text + "'";
                        SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);

                        //Response.Write("DANE "+passComm.ExecuteScalar().ToString());

                        string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

                        string checkTypeOfUser = "select TypeOfUser from UserData where login = '" + TextBox_Login.Text + "'";
                        SqlCommand typeOfuserComm = new SqlCommand(checkTypeOfUser, conn);

                        string tou = typeOfuserComm.ExecuteScalar().ToString().Replace(" ", "");

                        if (password == TextBox_Password.Text)
                        {
                            Session["New"] = TextBox_Login.Text;
                            Response.Write("Hasło jest poprawne!");
                            if (tou == "True")
                            {
                                Response.Redirect("User.aspx");
                            }
                            else
                            {
                                Response.Redirect("AdminPage.aspx");
                            }
                        }
                        // else
                        // {
                        // Response.Write("Hasło jest niepoprawne!");
                        //Response.Write("\t"+TextBox_Password.Text);
                        // Response.Write("\t" + password);
                        /// }
                    }
                    else
                    {
                        Response.Write("Konto jest nieaktywne. Skontaktuj się z administratorem strony");
                    }
                }
                else
                {
                    Response.Write("Login jest niepoprawny!");
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                //Response.Write("ERROR " + ex.ToString());
                // dostajemy null wiec haslo bedzie nieprawdziwe
                Response.Write("Hasło jest niepoprawne!");
            }

            TextBox_Login.Text = "";
            TextBox_Password.Text = "";
        }

    }
}