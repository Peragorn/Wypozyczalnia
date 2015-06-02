<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="CarRental.Logout" MasterPageFile="~/UserMasterPage.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Czy jesteś pewien, że chcesz się wylogować?</h3>
        <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Wyloguj" class="btn btn-lg btn-default"/>

</asp:Content>
