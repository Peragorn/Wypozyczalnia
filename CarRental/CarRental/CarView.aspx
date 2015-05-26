<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarView.aspx.cs" Inherits="CarRental.CarView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Samochody</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="css/cover.css" rel="stylesheet" />
</head>
<body>
     <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div>
            <div class="inner">
              <h3 class="masthead-brand">Wypożycz auto</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li ><a href="..">Home</a></li>
                </ul>
              </nav>
            </div>
          </div>

    <div class = "inner cover">
        <form runat="server" id="form1">
        <table class="table table-condensed" width: 100%>
            <thead>
                <tr>
                    <th>
                        <asp:Label ID="Marka" runat="server" Text="Marka"></asp:Label>
                        <asp:Label ID="Model" runat="server" Text="Model"></asp:Label>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="196px" Width="300px" align="left"/>            
                        <asp:Label ID="Cennik" runat="server" Text="Cena/dzien"></asp:Label>
                    </td>
                </tr>
            </tbody>
            <tfoot>                
                <tr>
                    <td>
                        Dostępny: <asp:Label ID="dst" runat="server" Text="Dostępność"></asp:Label>
                    </td>
                </tr>               
            </tfoot>
        </table>
            <input type="submit" class="btn btn-success" value="Wypożycz" />
        </form>
    </div>


      
       <div class = "inner cover">
       <form id="form2"> 
        <table class="table table-condensed" width: 100%>
            <thead>
                <tr>
                    <th>
                        <asp:Label ID="Label1" runat="server" Text="Marka"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Model"></asp:Label>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="196px" Width="300px" align="left"/>            
                        <asp:Label ID="Label3" runat="server" Text="Cena/dzien"></asp:Label>
                    </td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td>
                        Dostępny: <asp:Label ID="Label4" runat="server" Text="Dostępność"></asp:Label>
                    </td>
                </tr>
            </tfoot>
        </table>
           <input type="submit" class="btn btn-success" value="Wypożycz" />
        </form>
    </div>

            <div width: 100% position: fixed;>
                <div class="inner">
                    <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
                </div>
          </div>

        </div>

      </div>

    </div>

</body>
</html>
