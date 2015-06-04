<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RentCommit.aspx.cs" Inherits="CarRental.RentCommit" MasterPageFile="~/UserMasterPage.Master" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Potwierdzenie Wynajmu</title>
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
        <div class="dark-matter">--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Marka2" runat="server" Text="Adres: "></asp:Label>
    <asp:Label ID="Model2" runat="server" Text="Adres: "></asp:Label>
    <br />
    Cena/dzień:
    <asp:Label ID="Cennik2" runat="server" Text="Adres: "></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Wynajem od: "></asp:Label>
    <asp:TextBox ID="wynajemod" runat="server" Width="248px" ForeColor="Black"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Wynajem do: "></asp:Label>
    <asp:TextBox ID="wynajemdo" runat="server" Width="248px" ForeColor="Black"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Potwierdź" OnClick="Button1_Click1" />


    <asp:CompareValidator ID="cvtxtStartDate" runat="server"
        ControlToCompare="wynajemod" CultureInvariantValues="true"
        Display="Dynamic" EnableClientScript="true"
        ControlToValidate="wynajemdo"
        ErrorMessage="Start date must be earlier than finish date"
        Type="Date" SetFocusOnError="true" Operator="GreaterThanEqual"
        Text="Start date must be earlier than finish date">
    </asp:CompareValidator>
</asp:Content>
<%--         </div>  
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
   <!-- <script>
        function isValidDate(f) {
            var subject = document.forms["form1"]["wynajemod"].value;
            var subject2 = document.forms["form1"]["wynajemdo"].value;
            var fDate = Date.parse(subject);
            var lDate = Date.parse(subject2);
            var aInputs2 = document.getElementById("error2");
            var aInputs = document.getElementById("error");
            if (subject2 < subject) {
                //alert("Data wynajmu jest pozniejsza od drugiej");
                document.getElementById("error2").innerHTML = "Data wynajmu jest pozniejsza od drugiej";
                return false;
            }
            if (subject.match(/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/) && subject2.match(/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/)) {
                alert("Dane sa poprawne");
                return true;
            }
            else {
                // alert("Niepoprawny format daty. Poprawny format to yyyy-mm-dd");
                document.getElementById("error").innerHTML = "Niepoprawny format daty. Poprawny format to yyyy-mm-dd";
                return false;
            }

        }


    </script>-->
</body>
</html>--%>
