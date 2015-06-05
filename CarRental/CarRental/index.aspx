<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CarRental.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="css/image/samochod.jpg" />
    <title>Wypożyczalnia</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/cover.css" rel="stylesheet" />
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
    <div class="site-wrapper">
        <div class="site-wrapper-inner">
            <div class="cover-container">
                <div class="masthead clearfix">
                    <div class="inner">
                        <h3 class="masthead-brand">Wypożyczalnia</h3>
                        <nav>
                            <ul class="nav masthead-nav">
                                <li class="active"><a href="#">Home</a></li>
                                <!--<li><a href="CarViewMix.aspx">Nasza oferta</a></li>-->
                                <li><a href="Registration.aspx">Rejestracja</a></li>
                                <li><a href="Login.aspx">Logowanie</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="inner cover">


                    <h1 class="cover-heading">Rent wisely</h1>
                    <h1 class="cover-heading">National Car Rental Company</h1>
                    <br />
                    <h2><p class="lead"><a href="News.aspx" >Zapoznaj sie z nowościami</a></p></h2>
                    <p class="lead">
                        <a href="CarViewMix.aspx" class="btn btn-lg btn-default">Przeglądaj samochody</a>
                    </p>
                </div>
                <div class="mastfoot">
                    <div class="inner">
                        <p>
                            <asp:Label ID="LabelViews" runat="server" ForeColor="Red"></asp:Label></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
