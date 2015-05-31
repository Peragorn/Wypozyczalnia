using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}