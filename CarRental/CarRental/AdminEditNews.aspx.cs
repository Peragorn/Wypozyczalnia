using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class AdminEditNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            //Przelaczenie szanlonu dla elementu
            DataList1.EditItemIndex = e.Item.ItemIndex;

            //Przeladowanie danych
            DataList1.DataBind();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            //Zapisanie wartosci parametrow
            SqlDataSource1.UpdateParameters["Id"].DefaultValue =
                 DataList1.DataKeys[e.Item.ItemIndex].ToString();

            SqlDataSource1.UpdateParameters["head"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxHead")).Text;

            SqlDataSource1.UpdateParameters["body"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxBody")).Text;

            SqlDataSource1.UpdateParameters["show"].DefaultValue =
                ((CheckBox)e.Item.FindControl("CheckBoxShow")).Checked.ToString();


            //Zapisanie danych w bazie
            SqlDataSource1.Update();

            //Wylaczenie szablony edycji
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            SqlDataSource1.DeleteParameters["Id"].DefaultValue =
               DataList1.DataKeys[e.Item.ItemIndex].ToString();


            SqlDataSource1.Delete();

            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string CommandName = e.CommandName;

            if (CommandName == "Insert")
            {
                SqlDataSource1.InsertParameters["head"].DefaultValue =
                    ((TextBox)e.Item.FindControl("TextBoxHead")).Text;


                SqlDataSource1.InsertParameters["body"].DefaultValue =
                    ((TextBox)e.Item.FindControl("TextBoxBody")).Text;

                SqlDataSource1.InsertParameters["show"].DefaultValue =
                    ((CheckBox)e.Item.FindControl("CheckBoxShow")).Checked.ToString();
            
                SqlDataSource1.Insert();
                DataList1.DataBind();
            }
        }
    }
}