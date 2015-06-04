using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                LabelWelcome.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }


            SqlConnection conn = new SqlConnection(
                       ConfigurationManager.
                       ConnectionStrings["RegistrationConnectionString"].
                       ConnectionString);

            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;

            //cmd.CommandText = "SELECT Rent_end FROM Rent";
            cmd.CommandText = "SELECT Rent_end FROM Rent r, Car c Where r.Id_car = c.Id_Car AND c.Rent = 0 AND Login = @login";
            cmd.Parameters.AddWithValue("@login", Session["New"]);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            conn.Open();

            reader = cmd.ExecuteReader();
   
            while (reader.Read())
            {
                DateTime dt = Convert.ToDateTime(reader[0].ToString());
                if (dt < Convert.ToDateTime(DateTime.Today.ToString("yyyy-MM-dd HH:mm:ss")))
                {
                    MassageBox("Przekroczono termin zwrotu samochodu! Zwróć samochód");
                }
                //DateTime.Today.ToString("yyyy-MM-dd HH:mm:ss");
                //Response.Write(dt);

            }

            conn.Close();
            
            //MassageBox("Przekroczono termin zwrotu samochodu!");
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["New"] = null;
            Response.Redirect("index.html");
        }

        public void MassageBox(String msg) 
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Massage Box", "<script language = 'javascript' > alert('" + msg + "')</script>");
        }
    }
}