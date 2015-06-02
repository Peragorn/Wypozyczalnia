using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class AdminEditCars : System.Web.UI.Page
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
            SqlDataSource1.UpdateParameters["Id_Car"].DefaultValue =
                DataList1.DataKeys[e.Item.ItemIndex].ToString();

            SqlDataSource1.UpdateParameters["TradeMark"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxTradeMark")).Text;

            SqlDataSource1.UpdateParameters["Model"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxModel")).Text;

            SqlDataSource1.UpdateParameters["Rent"].DefaultValue =
                ((CheckBox)e.Item.FindControl("CheckBoxRent")).Checked.ToString();

            SqlDataSource1.UpdateParameters["Price"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxPrice")).Text;

            SqlDataSource1.UpdateParameters["Image"].DefaultValue =
                ((TextBox)e.Item.FindControl("TextBoxImage")).Text;


            //Zapisanie danych w bazie
            SqlDataSource1.Update();

            //Wylaczenie szablony edycji
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {

            SqlDataSource1.DeleteParameters["Id_Car"].DefaultValue =
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
                SqlDataSource1.InsertParameters["TradeMark"].DefaultValue =
                    ((TextBox)e.Item.FindControl("TextBoxTradeMark")).Text;


                SqlDataSource1.InsertParameters["Model"].DefaultValue =
                    ((TextBox)e.Item.FindControl("TextBoxModel")).Text;

 
                SqlDataSource1.InsertParameters["Rent"].DefaultValue =
                    ((CheckBox)e.Item.FindControl("CheckBoxRent")).Checked.ToString();
           
    

     
                SqlDataSource1.InsertParameters["Price"].DefaultValue =
                    ((TextBox)e.Item.FindControl("TextBoxPrice")).Text;
       

      
                SqlDataSource1.InsertParameters["Image"].DefaultValue =
                    ((TextBox)e.Item.FindControl("TextBoxImage")).Text;

                // dopisac sprawdzanie czy pola sa wypelnione
 
                    SqlDataSource1.Insert();
                    DataList1.DataBind();

                          
            }
        }
    }
}