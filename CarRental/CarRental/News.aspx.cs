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
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //showMsg3p.Text = "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.";


            SqlConnection conn = new SqlConnection(
               ConfigurationManager.
               ConnectionStrings["RegistrationConnectionString"].
               ConnectionString);

            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;


            cmd.CommandText = "SELECT head FROM News Where show = 1";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            conn.Open();

            reader = cmd.ExecuteReader();

            int tmp = 0;
            while (reader.Read())
            {
                if (tmp == 0)
                {
                    showMsg1.Text = reader[0].ToString();
                }
                if (tmp == 1)
                {
                    showMsg2.Text = reader[0].ToString();
                }
                if (tmp == 2)
                {
                    showMsg3.Text = reader[0].ToString();
                }
                tmp++;
            }

            conn.Close();


            SqlCommand cmd1 = new SqlCommand();
            SqlDataReader reader1;

            cmd1.CommandText = "SELECT body FROM News Where show = 1";
            cmd1.CommandType = CommandType.Text;
            cmd1.Connection = conn;

            conn.Open();
            
            reader1 = cmd1.ExecuteReader();

            int tmp1 = 0;
            while (reader1.Read())
            {
                if (tmp1 == 0)
                {
                    showMsg1p.Text = reader1[0].ToString();
                }
                if (tmp1 == 1)
                {
                    showMsg2p.Text = reader1[0].ToString();
                }
                if (tmp1 == 2)
                {
                    showMsg3p.Text = reader1[0].ToString();
                }
                tmp1++;
            }

            conn.Close();
        
        
        
        
        }
    }
}