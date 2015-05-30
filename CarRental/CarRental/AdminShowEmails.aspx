<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminShowEmails.aspx.cs" Inherits="CarRental.AdminShowEmails" MasterPageFile="~/MasterPageAdmin.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_Mail" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id_Mail" HeaderText="Id_Mail" ReadOnly="True" SortExpression="Id_Mail" />
                <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Body" HeaderText="Body" SortExpression="Body" >
                <ItemStyle Height="100px" Width="800px" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Mail] ORDER BY [Login]"></asp:SqlDataSource>
</asp:Content>