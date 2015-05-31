<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mails.aspx.cs" Inherits="CarRental.Mails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wiadomości</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
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
                  <li class="active"><a href="#">Rejestracja</a></li>
                   <li><a href="Login.aspx">Logowanie</a></li>
                </ul>
              </nav>
            </div>
          </div>
 <form id="form1" runat="server">            
          <asp:FormView ID="MailsFormView"
                DataSourceID="GetMail"
                AllowPaging="true"
                runat="server">               
                                    
                <ItemTemplate>
                    <div class = "inner cover">
                  <table class="table" style="margin:0 auto;">
            <thead>
                <tr>
                    <th>
                        Temat: <asp:Label ID="Tytul" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>          
                        <asp:Label ID="Cennik" runat="server" Text='<%# Eval("Body") %>'></asp:Label>
                    </td>
                </tr>
            </tbody>
                  </table>  
                        </div>               
                </ItemTemplate>

                <PagerTemplate>
                    <div class = "inner cover">
                  <table style="margin:0 auto;">
                    <tr>
                      <td><asp:LinkButton ID="FirstButton" CommandName="Page" CommandArgument="First" Text="<<" RunAt="server"/></td>
                      <td><asp:LinkButton ID="PrevButton"  CommandName="Page" CommandArgument="Prev"  Text="<"  RunAt="server"/></td>
                      <td><asp:LinkButton ID="NextButton"  CommandName="Page" CommandArgument="Next"  Text=">"  RunAt="server"/></td>
                      <td><asp:LinkButton ID="LastButton"  CommandName="Page" CommandArgument="Last"  Text=">>" RunAt="server"/></td>
                    </tr>
                  </table>
                        </div>
                </PagerTemplate>

              </asp:FormView>

            <asp:SqlDataSource ID="GetMail" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Mail]"></asp:SqlDataSource>
                    </form>                       
            
            
            
             <div class="mastfoot">
            
                                                <div class="inner">
              <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

           

</body>
</html>