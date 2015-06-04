<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserEditUser.aspx.cs" Inherits="CarRental.UserEditUser" MasterPageFile="~/UserMasterPage.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">
        <EditItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td>Imię</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="false" Text='<%# Bind("Name") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nazwisko</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="false" Text='<%# Bind("Surname") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Hasło</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="false" Text='<%# Bind("Password") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="false" Text='<%# Bind("Email") %> ' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Update" runat="server" CommandName="Update" Text="OK" class="btn-success"/>
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td>Imię</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%# Eval("Name") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nazwisko</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Eval("Surname") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Hasło</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%# Eval("Password") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Text='<%# Eval("Email") %>' ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Edit" runat="server" CommandName="Edit" Text="Zmień" class="btn-default"/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Name], [Surname], [Password], [Email] FROM [UserData] WHERE ([Login] = @Login)" UpdateCommand="UPDATE UserData SET Name = @Name, Surname = @Surname, Password = @Password, Email = @Email WHERE ([Login] = @Login)">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="New" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Surname" />
            <asp:Parameter Name="Password" />
            <asp:Parameter Name="Email" />
            <asp:SessionParameter Name="Login" SessionField="New" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
