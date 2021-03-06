﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mails.aspx.cs" Inherits="CarRental.Mails" MasterPageFile="~/UserMasterPage.Master" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wiadomości</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/cover.css" rel="stylesheet" />
    <style type="text/css">
        #fixhet {
                width: 500px;
            }
        #fixhut {
                width: 250px;
            }

        </style>
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
                  <li ><a href="User.aspx">Strona główna</a></li>
                   <li class="active"><a href="#">Wiadomości</a></li>
                </ul>
              </nav>
            </div>
          </div>
 <form id="form1" runat="server">   --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
        #fixhet {
                width: 500px;
            }

        </style>
    <asp:FormView ID="MailsFormView"
        DataSourceID="GetMail"
        AllowPaging="True"
        runat="server">

        <ItemTemplate>
            <div class="dark-matter">
                <table class="table table-bordered" style="margin: 0 auto;">
                    <thead>
                        <tr>
                            <th id="fixhet">Temat:
                                <asp:Label ID="Tytul" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="fixhet">
                                <asp:Label ID="Cennik" runat="server" Text='<%# Eval("Body") %>'></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </ItemTemplate>

        <PagerTemplate>
            <div class="inner cover">
                <table style="margin: 0 auto;">
                    <tr>
                        <td id="fixhet">
                            <asp:LinkButton ID="FirstButton" CommandName="Page" CommandArgument="First" Text="<<" runat="server" /></td>
                        <td>
                            <asp:LinkButton ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="<" runat="server" /></td>
                        <td>
                            <asp:LinkButton ID="NextButton" CommandName="Page" CommandArgument="Next" Text=">" runat="server" /></td>
                        <td id="fixhet">
                            <asp:LinkButton ID="LastButton" CommandName="Page" CommandArgument="Last" Text=">>" runat="server" /></td>
                    </tr>
                </table>
            </div>
        </PagerTemplate>

    </asp:FormView>

    <asp:SqlDataSource ID="GetMail" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Mail] WHERE ([Login] = @Login)">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="New" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
<%--                    </form>                       
            
            
            
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
</html>--%>