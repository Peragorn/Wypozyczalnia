<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CarRental.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Label ID="LabelLogin" runat="server" Text="Login" style="text-align: right" Width="100px"></asp:Label>
    
        <asp:TextBox ID="TextBoxLogin" runat="server" Height="20px" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="Wprowadz login" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelPassword" runat="server" style="text-align: right" Text="Hasło" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Height="20px" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Wprowadz haslo" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<br />
        <asp:Label ID="LabelCpassword" runat="server" style="text-align: right" Text="Powtórz hasło" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxCPassword" runat="server" TextMode="Password" Height="20px" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxCPassword" ErrorMessage="Powtorz haslo" ForeColor="Red"></asp:RequiredFieldValidator>
    
        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxCPassword" ErrorMessage="Hasła muszą się zgadzać" ForeColor="Red"></asp:CompareValidator>
    
        <br />
        <asp:Label ID="LabelName" runat="server" style="text-align: right" Text="Imię" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxName" runat="server" Height="20px" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Podaj imię" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelSurname" runat="server" style="text-align: right" Text="Nazwisko" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxSurname" runat="server" Height="20px" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxSurname" ErrorMessage="Podaj nazwisko" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelEmail" runat="server" style="text-align: right" Text="Email" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxEmail" runat="server" Height="20px" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Podaj email" ForeColor="Red"></asp:RequiredFieldValidator>
    
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage=" Zła forma adresu email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
    
    </div>
        <asp:Button ID="ButtonReg" runat="server" OnClick="Button1_Click" Text="Zarejestruj" style="text-align: left" />
    </form>
</body>
</html>
