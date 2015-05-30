<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEditCars.aspx.cs" Inherits="CarRental.AdminEditCars" MasterPageFile="~/MasterPageAdmin.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id_Car" DataSourceID="SqlDataSource1" OnEditCommand="DataList1_EditCommand" OnDeleteCommand="DataList1_DeleteCommand" OnUpdateCommand="DataList1_UpdateCommand">
            <EditItemTemplate>
                
                <tr>
                    <td style="background-color: #FF0000">Id_Car
                    </td>
                    <td style="background-color: #FF0000">TradeMark
                    </td>
                    <td style="background-color: #FF0000">Model
                    </td>
                    <td style="background-color: #FF0000">Rent
                    </td>
                    <td style="background-color: #FF0000">Price
                    </td>
                    <td style="background-color: #FF0000">Image
                    </td>
                    <td style="background-color: #FF0000">ImageUrl
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="TextBoxId_Car" ReadOnly="true" Text='<%# Eval("Id_Car") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxTradeMark" ReadOnly="false" Text='<%# Eval("TradeMark") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxModel" ReadOnly="false" Text='<%# Eval("Model") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBoxRent" Enabled="true" Checked='<%# Eval("Rent") %>' runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxPrice" ReadOnly="false" Text='<%# Eval("Price") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxImage" ReadOnly="false" Text='<%# Eval("Image") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxImageUrl" ReadOnly="false" Text='<%# Eval("ImageUrl") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Update" runat="server" CommandName="Update" Text="Update" />
                    </td>
                </tr>
            </EditItemTemplate>
            <ItemTemplate>

                <tr>
                    <td style="background-color: #00FFFF">Id_Car
                    </td>
                    <td style="background-color: #00FFFF">TradeMark
                    </td>
                    <td style="background-color: #00FFFF">Model
                    </td>
                    <td style="background-color: #00FFFF">Rent
                    </td>
                    <td style="background-color: #00FFFF">Price
                    </td>
                    <td style="background-color: #00FFFF">Image
                    </td>
                    <td style="background-color: #00FFFF">ImageUrl
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="TextBoxId_Car" ReadOnly="true" Text='<%# Eval("Id_Car") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxTradeMark" ReadOnly="true" Text='<%# Eval("TradeMark") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxModel" ReadOnly="true" Text='<%# Eval("Model") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBoxRent" Enabled="false" Checked='<%# Eval("Rent") %>' runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxPrice" ReadOnly="true" Text='<%# Eval("Price") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxImage" ReadOnly="true" Text='<%# Eval("Image") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxImageUrl" ReadOnly="true" Text='<%# Eval("ImageUrl") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Edit" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Button ID="Delete" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Car] ORDER BY [Id_Car]" DeleteCommand="DELETE FROM Car WHERE Id_car = @Id_car" UpdateCommand="UPDATE Car SET TradeMark = @TradeMark, Model = @Model, Rent = @Rent, Price = @Price, Image = @Image WHERE Id_car=@Id_car">
            <DeleteParameters>
                <asp:Parameter Name="Id_car" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TradeMark" />
                <asp:Parameter Name="Model" />
                <asp:Parameter Name="Rent" />
                <asp:Parameter Name="Price" />
                <asp:Parameter Name="Image" />
                <asp:Parameter Name="Id_car" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
