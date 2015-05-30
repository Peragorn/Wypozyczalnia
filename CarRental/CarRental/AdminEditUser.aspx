<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEditUser.aspx.cs" Inherits="CarRental.AdminEditUser" MasterPageFile="~/MasterPageAdmin.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Login" DataSourceID="SqlDataSource1" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand">
            <EditItemTemplate>
                                <table>
                    <tr >
                        <td style="background-color: #FF0000">Login
                        </td>
                        <td style="background-color: #FF0000">Name
                        </td>
                        <td style="background-color: #FF0000">Surname
                        </td>
                        <td style="background-color: #FF0000">Password
                        </td>
                        <td style="background-color: #FF0000">mail
                        </td>
                        <td style="background-color: #FF0000">TypeOfUser
                        </td>
                        <td style="background-color: #FF0000">Accstatus
                        </td>

                    </tr>
                  
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" ReadOnly="false" Text='<%# Bind("Login") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxName" ReadOnly="false" Text='<%# Bind("Name") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxSurname" ReadOnly="false" Text='<%# Bind("Surname") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPassword" ReadOnly="false" Text='<%# Bind("Password") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEmail" ReadOnly="false" Text='<%# Bind("Email") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBoxDTypeOfUser" Enabled="true" Checked='<%# Bind("TypeOfUser") %>' runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBoxAccStatus" Enabled="true" Checked='<%# Bind("AccStatus") %>' runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="UPdate" runat="server" CommandName="Update" Text="Update" />
                        </td>
                    </tr>


                </table>
            </EditItemTemplate>
            <ItemTemplate>

                <table>
                    <tr>
                        <td style="background-color: #00FFFF">Login
                        </td>
                        <td style="background-color: #00FFFF">Name
                        </td>
                        <td style="background-color: #00FFFF">Surname
                        </td>
                        <td style="background-color: #00FFFF">Password
                        </td>
                        <td style="background-color: #00FFFF">Email
                        </td>
                        <td style="background-color: #00FFFF">TypeOfUser
                        </td>
                        <td style="background-color: #00FFFF">Accstatus
                        </td>

                    </tr>
                  
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" ReadOnly="true" Text='<%# Eval("Login") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxName" ReadOnly="true" Text='<%# Eval("Name") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxSurname" ReadOnly="true" Text='<%# Eval("Surname") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPassword" ReadOnly="true" Text='<%# Eval("Password") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEmail" ReadOnly="true" Text='<%# Eval("Email") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBoxDTypeOfUser" Enabled="false" Checked='<%# Eval("TypeOfUser") %>' runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBoxAccStatus" Enabled="false" Checked='<%# Eval("AccStatus") %>' runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="Edit" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Button ID="Delete" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                    </tr>


                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [UserData] ORDER BY [Login]" UpdateCommand="UPDATE UserData SET Login =@Login, Name =@Name, Surname =@Surname, Password =@Password, TypeOfUser =@TypeOfUser, Email =@Email, AccStatus =@AccStatus WHERE Login=@Login" DeleteCommand="DELETE FROM UserData WHERE (Login = @Login)">
            <UpdateParameters>
                <asp:Parameter Name="Login" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Surname" />
                <asp:Parameter Name="Password" />
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="TypeOfUser" />
                <asp:Parameter Name="AccStatus" />
            </UpdateParameters>
              <DeleteParameters>
                     <asp:Parameter Name="Login"></asp:Parameter>
         </DeleteParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
