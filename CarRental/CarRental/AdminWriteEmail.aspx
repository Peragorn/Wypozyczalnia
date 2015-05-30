<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminWriteEmail.aspx.cs" Inherits="CarRental.AdminWriteEmail"  MasterPageFile="~/MasterPageAdmin.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Login" DataValueField="Login"></asp:DropDownList>
        <br />
        <br />

        <asp:TextBox ID="TextBox1" runat="server"  ToolTip="Type Email Title" Width="550px"></asp:TextBox>

        <br />
        <br />
        <textarea id="TextAreaText" runat="server" ></textarea>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Login] FROM [UserData] ORDER BY [Login]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #TextArea1 {
            width: 550px;
            height: 191px;
        }
        #TextAreaText {
            width: 550px;
            height: 185px;
        }
    </style>
</asp:Content>

