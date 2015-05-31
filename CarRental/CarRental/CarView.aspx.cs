using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class CarView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            DataList1.DataBind();
        }

        protected void DataList1_SelectCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source,
    DataListCommandEventArgs e)
        {
            if (e.CommandName == "Dalej")
            {
                HttpCookie cookie;
                DataListItem item = (DataListItem)(((Button)(e.CommandSource)).NamingContainer);

                cookie = new HttpCookie("trademark");
                string marka = ((Label)item.FindControl("Marka")).Text;
                cookie.Value = marka;
                cookie.Expires = DateTime.Now.AddSeconds(180);
                Response.Cookies.Add(cookie);

                cookie = new HttpCookie("model");
                string model = ((Label)item.FindControl("Model")).Text;
                cookie.Value = model;
                cookie.Expires = DateTime.Now.AddSeconds(180);
                Response.Cookies.Add(cookie);

                cookie = new HttpCookie("price");
                string cena = ((Label)item.FindControl("Cennik")).Text;
                cookie.Value = cena;
                cookie.Expires = DateTime.Now.AddSeconds(180);
                Response.Cookies.Add(cookie);

                Response.Redirect("RentCommit.aspx");
            }
        }
    }
}