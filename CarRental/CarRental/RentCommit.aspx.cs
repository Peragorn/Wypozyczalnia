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
    public partial class RentCommit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Marka2.Text = Request.Cookies["trademark"].Value;
            Model2.Text = Request.Cookies["model"].Value;
            Cennik2.Text = Request.Cookies["price"].Value;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(
                                       ConfigurationManager.
                                       ConnectionStrings["RegistrationConnectionString"].
                                       ConnectionString);
                conn.Open();

                string comm = "select id_car from Car where model='" + Model2.Text + "'";
                SqlCommand idc = new SqlCommand(comm, conn);
                string idc2 = idc.ExecuteScalar().ToString().Replace(" ", "");

                string insertQuery = "insert into Rent (Id_car, Login, Rent_start, Rent_end) values (@idcar, @login, @rent_start, @rent_end)";

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@idcar", idc2);
                com.Parameters.AddWithValue("@login", Session["New"]);
                com.Parameters.AddWithValue("@rent_start", wynajemod.Text + " 00:00:00");
                com.Parameters.AddWithValue("@rent_end", wynajemdo.Text + " 00:00:00");

                com.ExecuteNonQuery();

                string updateQuery = "update Car set Rent='False' where Id_car=" + idc2 + "";
                SqlCommand upd = new SqlCommand(updateQuery, conn);
                upd.ExecuteNonQuery();
                Response.Write("Dodano rezerwację");

                conn.Close();

                Response.Redirect("User.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("ERROR " + ex.ToString());
            }
        }


    }
}