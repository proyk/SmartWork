<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/line-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/line-awesome-font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.min.css" />
    <link rel="stylesheet" type="text/css" href="lib/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="lib/slick/slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <style>
        .shd1 {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        wrapper {
            display: table;
            height: 100%;
            width: 100%;
        }

        .content {
            margin-left: 60px;
        }

        .container-fostrap {
            display: table-cell;
            padding: 1em;
            text-align: center;
            vertical-align: middle;
        }

        .fostrap-logo {
            width: 100px;
            margin-bottom: 15px;
        }

        h1.heading {
            color: #fff;
            font-size: 1.15em;
            font-weight: 900;
            margin: 0 0 0.5em;
            color: #505050;
        }

        @media (min-width: 450px) {
            h1.heading {
                font-size: 3.55em;
            }
        }

        @media (min-width: 760px) {
            h1.heading {
                font-size: 3.05em;
            }
        }

        @media (min-width: 900px) {
            h1.heading {
                font-size: 3.25em;
                margin: 0 0 0.3em;
            }
        }

        .card {
            display: block;
            margin-bottom: 20px;
            line-height: 1.42857143;
            background-color: #fff;
            border-radius: 2px;
            box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
            transition: box-shadow .25s;
        }

            .card:hover {
                box-shadow: 0 8px 17px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            }

        .img-card {
            width: 100%;
            height: 200px;
            border-top-left-radius: 2px;
            border-top-right-radius: 2px;
            display: block;
            overflow: hidden;
        }

            .img-card img {
                width: 100%;
                height: 200px;
                object-fit: cover;
                transition: all .25s ease;
            }

        .card-content {
            padding: 15px;
            text-align: left;
        }

        .card-title {
            margin-top: 0px;
            font-weight: 700;
            font-size: 1.65em;
        }

            .card-title a {
                color: #000;
                text-decoration: none !important;
            }

        .card-read-more {
            border-top: 1px solid #D4D4D4;
        }

            .card-read-more a {
                text-decoration: none !important;
                padding: 10px;
                font-weight: 600;
                text-transform: uppercase;
            }

        .si {
        }

        .first {
            background: linear-gradient(45deg,#4099ff,#73b4ff);
        }

        .sec {
            background: linear-gradient(45deg,#2ed8b6,#59e0c5);
        }

        .third {
            background: linear-gradient(45deg,#FFB64D,#ffcb80);
        }

        .fourth {
            background: linear-gradient(45deg,#FF5370,#ff869a);
        }
    </style>
</head>
<body class="bg-transparent">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div style="margin-left: 100px;">

                <a>
                    <img src="images/cm-logo.png" alt="Logo" height="50" width="200" /></a>

            </div>


            <div class="row">
                <nav class="navbar navbar-expand-lg navbar-light " style="margin-left: 150px;">
                    <a class="navbar-brand btn btn-success text-light" href="#">How it Works</a>
                    <a class="navbar-brand btn btn-success text-light" href="index.aspx">Browse Jobs</a>

                    <a class="navbar-link  btn btn-primary" style="margin-left: 300px; cursor: pointer;" href="SignIN_SignUp.aspx">--Log In--</a>
                    <a class="navbar-link navbar-text-dark btn btn-primary" style="cursor: pointer; margin-left: 10px;" href="SignIN_SignUp.aspx">--Sign Up--</a>
                </nav>
            </div>
        </div>
        <hr />

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image ID="bck" runat="server" ImageUrl="~/images/gbs.png" Width="100%" Style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 10px" />

                </div>
            </div>
        </div>
        <br />
        <br />
        <section class="wrapper text-center">
            <div class="container-fostrap text-center">
                <h1 class="heading">How it Works
                </h1>
                <div class="content">
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-xs-12 col-sm-4 text-center">
                                <div class="card">

                                    <img class="img-card" src="images/d1.svg" />

                                    <div class="card-content">
                                        <h4 class="card-title text-center font-weight-bold">
                                            <hr>
                                            <a href="">Post a job
                                            </a>
                                        </h4>
                                        <p class="text-center    font-weight-bold h5">
                                            It's easy. Simply post a job you need completed and receive competitive bids from freelancers within minutes.
                                        </p>
                                    </div>
                                    <div class="card-read-more">
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 text-center">
                                <div class="card">

                                    <img class="img-card" src="images/d2.svg" />

                                    <div class="card-content">
                                        <h4 class="card-title text-center font-weight-bold">
                                            <hr>
                                            <a href="">Choose freelancers
                                            </a>
                                        </h4>
                                        <p class="text-center font-weight-bold h5">
                                            Whatever your needs, there will be a freelancer to get it done: from web design, mobile app development, virtual assistants, product manufacturing, and graphic design (and a whole lot more).  
                                        </p>
                                    </div>
                                    <div class="card-read-more">
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 text-center">
                                <div class="card">

                                    <img class="img-card" src="images/d3.svg" />

                                    <div class="card-content">
                                        <h4 class="card-title text-center font-weight-bold">
                                            <hr>
                                            <a href="">Pay safely
                                            </a>
                                        </h4>
                                        <p class="text-center  font h5">
                                            With secure payments and thousands of reviewed professionals to choose from, Freelancer.com is the simplest and safest way to get work done online.
                                        </p>
                                    </div>
                                    <div class="card-read-more">
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <h2 class="h2 text-center">Browse Your  Category</h2>
        <br />
        <div class="col-12">
            <div class="row">
                <asp:Repeater ID="rptshow" runat="server" OnItemDataBound="rptshow_ItemDataBound">

                    <HeaderTemplate>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <hr />
                        <div class="col-md-3 mt-4">


                            <div class="card <%# GetRowColor() %> " id="cd" runat="server">

                                <div class="card-body text-center ">
                                    <a href="SignIN_SignUp.aspx" class="text-dark">
                                        <i class="fa fa-pencil-square fa-3x"></i>
                                        <br />

                                        <h4 class="card-title">
                                            <%#Eval("category_name") %></h4>
                                </div>

                            </div>
                            </a>
                        </div>


                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>

                </asp:Repeater>
            </div>
        </div>

    </form>

    <br />
    <br />

     
     <footer class="page-footer font-small  text-light" style="background-color:#1d4354">
        <br />
        <div style="text-align:center" class="text-capitalize font-weight-bold">
            All Rights are Reserved smartwork Admin*
        </div>
    
   <hr />
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            © 2020 Copyright :
    <a href="index.aspx" style="color:white;""><u>smartwork.com</u></a>
        </div>
        <!-- Copyright -->
    </footer>

</body>
</html>






