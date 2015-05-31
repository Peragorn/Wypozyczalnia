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

        <form id="form1" runat="server">
             <asp:DataList ID="DataList1" runat="server" DataKeyField="Id_Car" DataSourceID="CarRentalDB" OnItemCommand="DataList1_ItemCommand" OnDeleteCommand="DataList1_DeleteCommand">
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
                        <img src ='<%# Eval("ImageUrl") %>' width ="300" height ="196" />
                        Cena/dzień: <asp:Label ID="Cennik" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
            </tbody>
            <tfoot>                
                <tr>
                    <td>
                        Dostępny: <asp:Label ID="dst" runat="server" Text='<%# Eval("Rent") %>'></asp:Label>
                    </td>
                </tr>               
            </tfoot>
        </table>
            <asp:Button ID="Buttonwypozycz" runat="server" class="btn btn-success" CommandName="Dalej" Text="Wypożycz" />
        </form>
    </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="CarRentalDB" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Car] WHERE ([Rent] = @Rent)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="Rent" Type="Boolean" />
                        </SelectParameters>
            </asp:SqlDataSource>
            </form>
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
