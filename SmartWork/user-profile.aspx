﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="user-profile.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="utf-8" />
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Creative User Profile #User-Interface #User #Profile #jquery #Social #contact #accordion - Bootsnipp.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        @import url(https://fonts.googleapis.com/css?family=Oswald:400,300);
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);

        * {
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            background: #2d2c41;
            font-family: 'Open Sans', Arial, Helvetica, Sans-serif, Verdana, Tahoma;
        }

        .iamgurdeep-pic {
            position: relative;
        }

        .username {
            bottom: 0;
            color: #ffffff;
            padding: 30px 15px 4px;
            position: absolute;
            width: 100%;
            text-shadow: 1px 1px 2px #000000;
            background: -moz-linear-gradient(top, rgba(0,0,0,0) 0%, #2d2c41 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, rgba(0,0,0,0) 0%, #2d2c41 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, rgba(0,0,0,0) 0%, #2d2c41 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#a64d4d4d',GradientType=0 ); /* IE6-9 */
        }

        .iamgurdeeposahan {
            border-radius: 4px 4px 0 0;
        }

        .username > h2 {
            font-family: oswald;
            font-size: 27px;
            font-weight: lighter;
            margin: 31px 0 4px;
            position: relative;
            text-shadow: 1px 1px 2px #000000;
            text-transform: uppercase;
        }

            .username > h2 small {
                color: #ffffff;
                font-family: open sans;
                font-size: 13px;
                font-weight: 400;
                position: relative;
            }

        .username .fa {
            color: #ffffff;
            font-size: 14px;
            margin: 0 0 0 4px;
            position: static;
        }

        .edit-pic a {
            background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
            border: 1px solid #ffffff;
            border-radius: 50%;
            color: #ffffff;
            font-size: 21px;
            height: 39px;
            line-height: 38px;
            margin: 8px;
            text-align: center;
            width: 39px;
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
            text-decoration: none !important;
            display: list-item;
            background-color: rgba(255, 255, 255, 0.1);
        }

            .edit-pic a:hover {
                font-size: 17px;
                opacity: 0.9;
            }

            .edit-pic a:focus {
                background: #b63b4d;
                color: #fff;
                border: 1px solid #b63b4d;
            }

        a:focus {
            outline: none;
            outline-offset: 0px;
        }

        .edit-pic {
            position: absolute;
            right: 0;
            top: 0;
            opacity: 0;
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }

        .tags {
            background: rgba(255, 255, 255, 0.1) none repeat scroll 0 0;
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 2px;
            display: inline-block;
            font-size: 13px;
            margin: 4px 0 0;
            padding: 2px 5px;
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }

            .tags:hover {
                background: rgba(255, 255, 255, 0.3) none repeat scroll 0 0;
                border: 1px solid rgba(255, 255, 255, 0.5);
                border-radius: 2px;
                display: inline-block;
                font-size: 13px;
                margin: 4px 0 0;
                padding: 2px 5px;
            }

        #accordion:hover .edit-pic {
            opacity: unset;
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }


        .btn-o {
            background-color: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 2px;
            color: #ffffff !important;
            display: inline-block;
            font-family: open sans;
            font-size: 15px !important;
            font-weight: normal !important;
            margin: 0 0 10px;
            padding: 5px 11px;
            text-decoration: none !important;
            text-transform: uppercase;
            background-color: rgba(255, 255, 255, 0.1);
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }

            .btn-o:hover {
                background-color: rgba(255, 255, 255, 0.4);
                color: #fff !important;
            }

            .btn-o:focus {
                background: #b63b4d;
                color: #fff;
                border: 1px solid #b63b4d;
            }

        .submenu .iamgurdeeposahan {
            background: rgba(255, 255, 255, 0.1) none repeat scroll 0 0 !important;
            border-radius: 50%;
            height: 60px;
            padding: 2px;
            width: 60px;
        }

        .photosgurdeep > a {
            background: #ffffff none repeat scroll 0 0;
            border-radius: 50%;
            display: inline-block !important;
            padding: 0 !important;
        }

        .view-all {
            background: rgba(255, 255, 255, 0.1) none repeat scroll 0 0 !important;
            border: 1px solid;
            float: right;
            font-family: oswald;
            font-size: 26px;
            height: 60px;
            line-height: 61px;
            text-align: center;
            width: 60px;
        }

        .photosgurdeep {
            padding: 10px 9px 4px 35px;
        }

        ul {
            list-style-type: none;
        }

        a {
            color: #b63b4d;
            text-decoration: none;
        }

        /** =======================
 * Contenedor Principal
 ===========================*/
        h1 {
            color: #FFF;
            font-size: 24px;
            font-weight: 400;
            text-align: center;
            margin-top: 40px;
        }

            h1 a {
                color: #c12c42;
                font-size: 16px;
            }

        .accordion {
            width: 100%;
            max-width: 360px;
            margin: 30px auto 20px;
            background: #FFF;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }

            .accordion .link {
                cursor: pointer;
                display: block;
                padding: 15px 15px 15px 42px;
                color: #4D4D4D;
                font-size: 14px;
                font-weight: 700;
                border-bottom: 1px solid #CCC;
                position: relative;
                -webkit-transition: all 0.4s ease;
                -o-transition: all 0.4s ease;
                transition: all 0.4s ease;
            }

            .accordion li:last-child .link {
                border-bottom: 0;
            }

            .accordion li i {
                position: absolute;
                top: 16px;
                left: 12px;
                font-size: 18px;
                color: #595959;
                -webkit-transition: all 0.4s ease;
                -o-transition: all 0.4s ease;
                transition: all 0.4s ease;
            }

                .accordion li i.fa-chevron-down {
                    right: 12px;
                    left: auto;
                    font-size: 16px;
                }

            .accordion li.open .link {
                color: #b63b4d;
            }

            .accordion li.open i {
                color: #b63b4d;
            }

                .accordion li.open i.fa-chevron-down {
                    -webkit-transform: rotate(180deg);
                    -ms-transform: rotate(180deg);
                    -o-transform: rotate(180deg);
                    transform: rotate(180deg);
                }

            .accordion li.default .submenu {
                display: block;
            }
        /**
 * Submenu
 -----------------------------*/
        .submenu {
            display: none;
            background: #444359;
            font-size: 14px;
        }

            .submenu li {
                border-bottom: 1px solid #4b4a5e;
            }

            .submenu a {
                display: block;
                text-decoration: none;
                color: #d9d9d9;
                padding: 12px;
                padding-left: 42px;
                -webkit-transition: all 0.25s ease;
                -o-transition: all 0.25s ease;
                transition: all 0.25s ease;
            }

                .submenu a:hover {
                    background: #b63b4d;
                    color: #FFF;
                }
















        .nav.navbar-nav .dropdown-toggle {
            padding: 0 !important;
        }

        .dropdown-toggle span {
            background: rgba(255, 255, 255, 0.1) none repeat scroll 0 0;
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 50px;
            font-size: 23px !important;
            height: 38px;
            line-height: 40px;
            margin: 0 !important;
            padding: 0 !important;
            text-align: center;
            width: 38px;
            text-shadow: none !important;
        }

        .nav.navbar-nav {
            bottom: 10px;
            position: absolute;
            right: 12px;
            transition: all 0.4s ease 0s;
        }

        .navbar-nav > li > .dropdown-menu {
            border-radius: 2px !important;
            margin-top: 10px;
            min-width: 101px;
            padding: 0;
        }

            .navbar-nav > li > .dropdown-menu li a {
                color: #333333 !important;
                font-size: 13px !important;
                font-weight: 600 !important;
                padding: 2px 8px !important;
                text-align: right !important;
                text-shadow: none !important;
            }

        .dropdown-toggle {
            background: rgba(0, 0, 0, 0) none repeat scroll 0 0 !important;
            font-size: 15px !important;
        }

        .dropdown {
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }

        .dropdown-menu > li > a {
            color: #428bca;
            -webkit-transition: all 0.4s ease;
            -o-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }

        .dropdown ul.dropdown-menu {
            border-radius: 4px;
            box-shadow: none;
        }

            .dropdown ul.dropdown-menu:before {
                content: "";
                border-bottom: 10px solid #fff;
                border-right: 10px solid transparent;
                border-left: 10px solid transparent;
                position: absolute;
                top: -8px;
                right: 8px;
                z-index: 10;
            }

        .fb-profile img.fb-image-lg {
            z-index: 0;
            margin-bottom: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .fb-image-profile {
           
            z-index: 9;
            width: 20%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    }
        .box{
        position: relative;
        display: inline-block; /* Make the width of box same as image */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 1, 0.6), 10px 6px 20px 0 rgba(0, 0, 0, 0.19);
        margin-bottom:20px;
    }
    .box .text{
       position: absolute;
        z-index: 999;
        margin-left:5px;
        left: 0;
        right: 0;
        top: 80%; /* Adjust this value to move the positioned div up and down */
        width: 60%; /* Set the width of the positioned div */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
        <div class="container container-fluid">
            <div class="row mt-3">



                <div class="col-5 mt-2 box">
                    <!-- Contenedor -->
                   
                    <img id="p_wall" runat="server" align="left" class="fb-image-lg " src="http://placehold.jp/500x400.png" alt="Profile image example" height="400" width="430" />

                    <img id="u_prf" runat="server" class="fb-image-profile thumbnail" style="margin-top:-100px" alt="iamgurdeeposahan" src="http://webncc.in/img/user/gurdeep-singh-osahan.jpg" />
                     <div class="text">
                        <h1 id="username" runat="server" class="text-capitalize text-info font-weight-bold">
                           
                        </h1>
                         
                    </div>
                </div>
                <div class="col-6">
                    <h2 class="text-right float-right "><a href="user-chat.aspx?user=<%=user%>" class="btn btn-success">Message</a></h2>
                    <ul id="accordion" class="accordion">








                        <li class="default open">
                            <div class="link"><i class="fa fa-globe"></i>User Details<i class="fa fa-chevron-down"></i></div>
                            <ul class="submenu">
                                <li><a href="#"><i class="fa fa-user"></i>Full Name : <label id="fname" runat="server"></label></a></li>
                                <li><a href="#">Address : <label id="add" runat="server"></label></a></li>
                                <li><a href="#">Email : <label id="email" runat="server"></label></a></li>
                                <li><a href="#">Phone : <label id="mob" runat="server"></label></a></li>
                                <li><a href="#">Details:<label id="desc" runat="server"></label></a></li>
                            </ul>
                        </li>
                        <li >
                            <div class="link"><i class="fa fa-code"></i>Professional Skills<i class="fa fa-chevron-down"></i></div>
                            <ul class="submenu">
                               <li><a href='#'> <% getSkill(); %></a></li>
                                
                            </ul>
                        </li>
                       
                    </ul>
                </div>
            </div>





        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            var Accordion = function (el, multiple) {
                this.el = el || {};
                this.multiple = multiple || false;

                // Variables privadas
                var links = this.el.find('.link');
                // Evento
                links.on('click', { el: this.el, multiple: this.multiple }, this.dropdown)
            }

            Accordion.prototype.dropdown = function (e) {
                var $el = e.data.el;
                $this = $(this),
                $next = $this.next();

                $next.slideToggle();
                $this.parent().toggleClass('open');

                if (!e.data.multiple) {
                    $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
                };
            }

            var accordion = new Accordion($('#accordion'), false);
        });






    </script>


</asp:Content>

