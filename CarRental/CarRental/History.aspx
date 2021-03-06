﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="CarRental.History" MasterPageFile="~/UserMasterPage.Master" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <title>Historia transakcji</title>
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
                  <li class="active"><a href="User.aspx">Strona główna</a></li>
                    <li class="active"><a href="Tranzakcje.aspx">Powrót</a></li>
                </ul>
              </nav>
            </div>
          </div>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <%--   <asp:DataList ID="DataList1" runat="server" DataKeyField="Login" DataSourceID="Transakcje">
        <ItemTemplate>
            
        </ItemTemplate>
    </asp:DataList>--%>
    <style type="text/css">
                #fixhet {
                width: 500px;
            }
    </style>
    <asp:FormView ID="HistoryFormView"
        DataSourceID="Transakcje"
        AllowPaging="True"
        runat="server">
        <ItemTemplate>
            <div class="dark-matter">
                <table class="table table-bordered">
                    <tr>
                        <td id="fixhet"  style="text-align:center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Trademark") %>' />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>' /></td>
                    </tr>
                    <tr>
                        <td id="fixhet" style="text-align:center">Początek:
                            <asp:Label ID="Rent_startLabel" runat="server" Text='<%# Eval("Rent_start").ToString().Remove(10) %>' /></td>
                    </tr>
                    <tr>
                        <td id="fixhet" style="text-align:center">Koniec:
                            <asp:Label ID="Rent_endLabel" runat="server" Text='<%# Eval("Rent_end").ToString().Remove(10) %>' /></td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
        <PagerTemplate>
            <div class="inner cover">
                <table style="margin: 0 auto;">
                    <tr>
                        <td id="fixhet">
                            <asp:LinkButton ID="FirstButton" CommandName="Page" CommandArgument="First" Text="<<" runat="server" /></td>
                        <td >
                            <asp:LinkButton ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="<" runat="server" /></td>
                        <td >
                            <asp:LinkButton ID="NextButton" CommandName="Page" CommandArgument="Next" Text=">" runat="server" /></td>
                        <td id="fixhet">
                            <asp:LinkButton ID="LastButton" CommandName="Page" CommandArgument="Last" Text=">>" runat="server" /></td>
                    </tr>
                </table>
            </div>
        </PagerTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="Transakcje" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="select Rent_start, Rent_end, Login, Model, Trademark from Car c, Rent r where [Login] = @Login and c.Id_car=r.Id_car;">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="New" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    

</asp:Content>

<%--                    <div class="mastfoot">
            
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
</html>--%>
