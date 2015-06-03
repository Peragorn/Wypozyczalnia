<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tranzakcje.aspx.cs" Inherits="CarRental.Tranzakcje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                <title>Transakcje</title>
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
                    <li ><a href="History.aspx">Historia tranzakcji</a></li>
                  <li class="active"><a href="User.aspx">Strona główna</a></li>
                </ul>
              </nav>
            </div>
          </div>

            <asp:DataList ID="DataList1" runat="server" DataSourceID="UnicTranq" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <form id="form1" runat="server">
                     <div class="dark matter">
                 <table class="table table-bordered">
                    <tr>
                        <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("Id_rent") %>' />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Trademark") %>' />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>' /></td>
                    </tr>
                    <tr>
                       <td>Początek: <asp:Label ID="Rent_startLabel" runat="server" Text='<%# Eval("Rent_start") %>' /></td>
                     </tr>
                    <tr>
                    <td>Koniec: <asp:Label ID="Rent_endLabel" runat="server" Text='<%# Eval("Rent_end") %>' /></td>
                    </tr>
                     <tr>
                         <td>
                             <asp:Button ID="ButtonX" runat="server" CommandName="zwrot" class="btn btn-danger" Text="Zwrot" />
                         </td>
                     </tr>
                   </table>
                  </div>
                        </form>
                </ItemTemplate>
               </asp:DataList>

                                <asp:SqlDataSource ID="UnicTranq" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="select Rent_start, Rent_end, Login, Model, Trademark, Id_rent from Car c, Rent r where [Login] = @Login and c.Id_car=r.Id_car and Rent_start&gt;getdate();">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Login" SessionField="New" />
                                    </SelectParameters>
            </asp:SqlDataSource>

                                <div class="mastfoot">
            
                                                <div class="inner">
              <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>


                                                    


            </div>
          </div>



        </div>

      </div>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
                
                
                
</body>
</html>
