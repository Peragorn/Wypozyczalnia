<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarViewMix.aspx.cs" Inherits="CarRental.CarViewMix" %>

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
                  <li ><a href="index.html">Home</a></li>
                  <li ><a href="Registration.aspx">Rejestracja</a></li>
                   <li><a href="Login.aspx">Logowanie</a></li>
                </ul>
              </nav>
            </div>
          </div>
            
            <form id="form1" runat="server">
             <asp:DataList ID="DataList1" runat="server" DataKeyField="Id_Car" DataSourceID="CarRentalDB">
<ItemTemplate>
<div class = "inner cover">

        <table class="table table-condensed" width: 100%>
            <thead>
                <tr>
                    <th>
                        <asp:Label ID="Marka" runat="server" Text='<%# Eval("TradeMark") %>'></asp:Label>
                        <asp:Label ID="Model" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>                                    
                        <td>                                    
                        <img src ='<%# Eval("ImageUrl") %>' width ="250" height ="150" /></td>
                        <td>Cena/dzień: <asp:Label ID="Cennik" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                    </td>
                </tr>
            </tbody>
            <tfoot>                
                <tr>
                    <td>
                        <%--Opis auta.--%>
                    </td>
                </tr>               
            </tfoot>
        </table>
        </form>
    </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="CarRentalDB" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Car]">
            </asp:SqlDataSource>
            </form>

<%--            
            <div width: 100% position: fixed;>
                <div class="inner">
                    <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
                    
                    
                   
                </div>
          </div>--%>

        </div>

      </div>

    </div>

</body>
</html>
