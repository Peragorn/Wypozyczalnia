<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CarRental.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelWelcome" runat="server" Text="Witaj "></asp:Label>
    
    </div>
        <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Wyloguj" />
    </form>
</body>
</html>
