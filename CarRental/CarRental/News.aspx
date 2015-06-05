<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="CarRental.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="css/image/samochod.jpg" />
    <title>Wypożyczalnia</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <%--<link href="css/cover.css" rel="stylesheet" />--%>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
     <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="../css/image/news1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>
                  <asp:Label ID="showMsg1" runat="server" />
              </h1>
              <p>
                  <asp:Label ID="showMsg1p" runat="server" />
              </p>
              <p><a class="btn btn-lg btn-primary" href="index.aspx" role="button">Home</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="../css/image/news2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>
                  <asp:Label ID="showMsg2" runat="server" />
              </h1>
              <p>
                  <asp:Label ID="showMsg2p" runat="server" />
              </p>
              <p><a class="btn btn-lg btn-primary" href="index.aspx" role="button">Home</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="../css/image/news3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>
                   <asp:Label ID="showMsg3" runat="server" />
                  </h1>
              <p>
                  <asp:Label ID="showMsg3p" runat="server" />

              </p>
              <p><a class="btn btn-lg btn-primary" href="index.aspx" role="button">Home</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

        <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
