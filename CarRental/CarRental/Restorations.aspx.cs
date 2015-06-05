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
    public partial class Restorations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "zwrot")
            {
                DataListItem item = (DataListItem)(((Button)(e.CommandSource)).NamingContainer);
                string start = ((Label)item.FindControl("Label4")).Text;

                SqlConnection conn = new SqlConnection(
                       ConfigurationManager.
                       ConnectionStrings["RegistrationConnectionString"].
                       ConnectionString);
                conn.Open();

                string marka = ((Label)item.FindControl("Label1")).Text;
                string model = ((Label)item.FindControl("Label2")).Text;
                string comm = "UPDATE Car SET Rent='1' WHERE Model="+model+"";
                SqlCommand idc = new SqlCommand(comm, conn);
                idc.ExecuteNonQuery();


                string updateQ = "update Car set Rent='True' where Trademark='" + marka + "' and Model='" + model + "'";
                SqlCommand upd = new SqlCommand(updateQ, conn);
                upd.ExecuteNonQuery();

                conn.Close();

                Response.Redirect("User.aspx");
            }

        }
    }
}