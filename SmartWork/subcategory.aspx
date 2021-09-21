<%@ Page Language="C#" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="subcategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" type="text/css" href="css/animate.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/line-awesome.css"/>
<link rel="stylesheet" type="text/css" href="css/line-awesome-font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.min.css"/>
<link rel="stylesheet" type="text/css" href="lib/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="lib/slick/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/responsive.css"/>


    <style>
        .shd1{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
        }
    </style>
</head>
    <body class="bg-transparent">

    <form id="form1" runat="server">
        <div class="container-fluid">
    <div style="margin-left:100px;">
               
                <a> <img src="images/cm-logo.png" alt="Logo" height="50" width="200"/></a>
                           
            </div>

                
                <div class="row">
               <nav class="navbar navbar-expand-lg navbar-light " style="margin-left:150px;">
             <a class="navbar-brand btn btn-success text-light" href="#">How it Works</a>
             <a class="navbar-brand btn btn-success text-light" href="index.aspx">Browse Jobs</a>

                   <a class="navbar-link  btn btn-primary" style="margin-left:300px; cursor:pointer;" href="SignIN_SignUp.aspx">--Log In--</a>
                    <a class="navbar-link navbar-text-dark btn btn-primary" style="cursor:pointer; margin-left:10px;" href="SignIN_SignUp.aspx">--Sign Up--</a>
              </nav>
                    </div>
        </div>
        <hr />
        <h2 class="h2 text-center">Select  Sub Category</h2>
       <div class="col-12">
                          <div class="row">  
         <asp:Repeater ID="rptsub" runat="server">

             <HeaderTemplate>

             </HeaderTemplate>
      
             <ItemTemplate>
                       <hr />
                           <div class="col-md-3 mt-4">
                               
                                
                       <div class="card shd1">
                 
                  <div class="card-body text-center bg-light text-light">
                       <a href="signIN_signUp.aspx?id=<%#Eval("subid") %>">
                       <i class="fa fa-pencil-square fa-3x"></i>
                      <br />
                    
                    <h4 class="card-title">
                        <%#Eval("subname") %></h4>
                  </div>
                      
                        </div>
</a>
                           </div>
                  
                      
             </ItemTemplate>
  
         </asp:Repeater>
                                </div>         
                           </div>
            
    </form>
        <br /><br />
        <footer class="page-footer font-small blue bg-dark text-light">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> HKYK</a>
  </div>
  <!-- Copyright -->

</footer>
    
</body>
</html>
