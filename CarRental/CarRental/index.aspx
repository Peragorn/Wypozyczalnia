<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CarRental.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="css/image/samochod.jpg"/>
    <title>Wypożyczalnia</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="css/cover.css" rel="stylesheet"/>
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
                    <!-- Carousel
    ================================================== -->
<%--                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img class="first-slide" src="http://blog.caranddriver.com/wp-content/uploads/2014/12/Ferrari-Sergio3_4antSX.jpg" alt="First slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h1>Example headline.</h1>
                                        <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                                        <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>-->
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img class="second-slide" src="http://automotiveblog.pl/wp-content/uploads/2010/04/Opel_Insignia_Exterior_1.jpg" alt="Second slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h1>Another example headline.</h1>
                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                        <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>-->
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img class="third-slide" src="http://i.wp.pl/a/f/jpeg/10880/bravo-fiat-2006-01.jpeg" alt="Third slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h1>One more for good measure.</h1>
                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                        <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>-->
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
                    </div><!-- /.carousel -->--%>

                    <h1 class="cover-heading">Rent wisely.</h1>
                    <p class="lead">jakies dlugie haslo reklamujace nasza firme wypozyczajaca samochody jakies dlugie haslo reklamujace nasza firme wypozyczajaca samochody jakies dlugie haslo reklamujace nasza firme wypozyczajaca samochody</p>
                    <p class="lead">
                        <a href="CarViewMix.aspx" class="btn btn-lg btn-default">Przeglądaj samochody</a>
                    </p>
                </div>
                <div class="mastfoot">
                    <div class="inner">
                        <p><asp:Label ID="LabelViews" runat="server" ForeColor="Red"></asp:Label></p>
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
