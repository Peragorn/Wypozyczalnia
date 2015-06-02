﻿using System;
using System.Collections.Generic;
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
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["New"] = null;
            Response.Redirect("index.html");
        }
    }
}