using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ile = (int)Application["UserCount"];
            ile++;
            Application["UserCount"] = ile;
            Session["odwiedzone"] = "true";

            LabelViews.Text = "Odzwiedzin: " + Application["UserCount"].ToString();
        }
    }
}