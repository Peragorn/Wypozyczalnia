<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarRental.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logowanie</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="css/image/samochod.jpg"/>
    <link href="css/cover.css" rel="stylesheet" />
</head>
<body>
        <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">Wypożyczalnia</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li ><a href="..">Home</a></li>
                  <li ><a href="Registration.aspx">Rejestracja</a></li>
                   <li class="active"><a href="#">Logowanie</a></li>
                </ul>
              </nav>
            </div>
          </div>

    <form id="form1" runat="server">
    <div class="dark-matter">
    
        <asp:Label ID="Label_Login" runat="server" Text="Login"></asp:Label>
        <asp:TextBox ID="TextBox_Login" runat="server"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Wprowadź login" ForeColor="Red" ControlToValidate="TextBox_Login"></asp:RequiredFieldValidator>
    
        <br />
        <br />
        <asp:Label ID="Label_Password" runat="server" Text="Hasło"></asp:Label>
        <asp:TextBox ID="TextBox_Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Wprowadź hasło" ForeColor="Red" ControlToValidate="TextBox_Password"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button_LogIN" runat="server" Text="Zaloguj"  class="button" OnClick="Button_LogIN_Click1" />
    
    </div>


            
                      <div class="mastfoot">
            <div class="inner">
              <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
          </div>

    </form>


            
        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
