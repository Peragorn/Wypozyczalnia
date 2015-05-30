using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class AdminWriteEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(
                                       ConfigurationManager.
                                       ConnectionStrings["RegistrationConnectionString"].
                                       ConnectionString);
                conn.Open();

                string insertQuery = "insert into Mail (Login, Title, Body) values (@login, @title, @body)";

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@login", DropDownList1.Text);
                com.Parameters.AddWithValue("@title", TextBox1.Text);
                com.Parameters.AddWithValue("@body", TextAreaText.InnerText);


                Response.Write("Wysłano!");

                com.ExecuteNonQuery();

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write("ERROR " + ex.ToString());
            }

        }

    }
}