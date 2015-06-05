<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEditNews.aspx.cs" Inherits="CarRental.AdminEditNews" MasterPageFile="~/MasterPageAdmin.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" OnItemCommand="DataList1_ItemCommand">
        <EditItemTemplate>
            <table>
                <tr>
                    <td style="background-color: #FF0000">Id
                    </td>
                    <td style="background-color: #FF0000">head
                    </td>
                    <td style="background-color: #FF0000">body
                    </td>
                    <td style="background-color: #FF0000">show
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="TextBoxId" ReadOnly="true" Text='<%# Bind("Id") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxHead" ReadOnly="false" Text='<%# Bind("head") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxBody" ReadOnly="false" Text='<%# Bind("body") %>' runat="server" Width="800"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBoxShow" Enabled="true" Checked='<%# Bind("show") %>' runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="Update" runat="server" CommandName="Update" Text="Update" />
                    </td>
                </tr>

            </table>
        </EditItemTemplate>
        <FooterTemplate>
            <br /><br /><br />
            
                       <table>
                <tr>
                    <td style="background-color: #66FF66">Id
                    </td>
                    <td style="background-color: #66FF66">head
                    </td>
                    <td style="background-color: #66FF66">body
                    </td>
                    <td style="background-color: #66FF66">show
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="TextBoxId" ReadOnly="true" Text='<%# Bind("Id") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxHead" ReadOnly="false" Text='<%# Bind("head") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxBody" ReadOnly="false" Text='<%# Bind("body") %>' runat="server" Width="800"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBoxShow" Enabled="true" Checked='<%# Bind("show") %>' runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="Insert" runat="server" CommandName="Insert" Text="Insert"  ValidationGroup="InsertData"/>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Wypełnij body" ControlToValidate="TextBoxBody" ValidationGroup="InsertData"></asp:RequiredFieldValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Wypełnij head" ControlToValidate="TextBoxHead" ValidationGroup="InsertData"></asp:RequiredFieldValidator>
                    </td>
                </tr>

            </table>
        </FooterTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td style="background-color: #00FFFF">Id
                    </td>
                    <td style="background-color: #00FFFF">head
                    </td>
                    <td style="background-color: #00FFFF">body
                    </td>
                    <td style="background-color: #00FFFF">show
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="TextBoxId" ReadOnly="true" Text='<%# Eval("Id") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxHead" ReadOnly="true" Text='<%# Eval("head") %>' runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxBody" ReadOnly="true" Text='<%# Eval("body") %>' runat="server" Width="800"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBoxShow" Enabled="false" Checked='<%# Eval("show") %>' runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="Edit" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Button ID="Delete" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>

            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [News] ORDER BY [show]" DeleteCommand="DELETE FROM News Where Id = @Id" UpdateCommand="UPDATE News SET head =@head , body =@body , show =@show WHERE Id = @Id" InsertCommand="INSERT INTO News(head, body, show) VALUES (@head, @body, @show)">
        <DeleteParameters>
            <asp:Parameter Name="Id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="head" />
            <asp:Parameter Name="body" />
            <asp:Parameter Name="show" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" />
            <asp:Parameter Name="head" />
            <asp:Parameter Name="body" />
            <asp:Parameter Name="show" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
