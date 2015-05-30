using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class AdminEditUser : System.Web.UI.Page
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
            SqlDataSource1.UpdateParameters["Login"].DefaultValue =
                DataList1.DataKeys[e.Item.ItemIndex].ToString();

            SqlDataSource1.UpdateParameters["Name"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxName")).Text;

            SqlDataSource1.UpdateParameters["Surname"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxSurname")).Text;

            SqlDataSource1.UpdateParameters["Password"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxPassword")).Text;

            SqlDataSource1.UpdateParameters["Email"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxEmail")).Text;

            SqlDataSource1.UpdateParameters["TypeOfUser"].DefaultValue =
                ((CheckBox)e.Item.FindControl("CheckBoxDTypeOfUser")).Checked.ToString();

            SqlDataSource1.UpdateParameters["AccStatus"].DefaultValue =
                ((CheckBox)e.Item.FindControl("CheckBoxAccStatus")).Checked.ToString();

            //Zapisanie danych w bazie
            SqlDataSource1.Update();

            //Wylaczenie szablony edycji
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {

            SqlDataSource1.DeleteParameters["Login"].DefaultValue = 
               DataList1.DataKeys[e.Item.ItemIndex].ToString();


            SqlDataSource1.Delete();

            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }



    }
}