<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIN_SignUp.aspx.cs" Inherits="SignIN_SignUp" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" type="text/css" href="css/animate.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/line-awesome.css"/>
<link rel="stylesheet" type="text/css" href="css/line-awesome-font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="lib/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="lib/slick/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/responsive.css"/>
</head>
<body class="sign-in">
    <form id="form1" runat="server">
    <div class="wrapper">
		

		<div class="sign-in-page">
			<div class="signin-popup">
				<div class="signin-pop">
					<div class="row">
						<div class="col-lg-6">
							<div class="cmp-info">
								<div class="cm-logo">
									<img src="images/sw.png" alt="" width="200" height="100">
									<p>Smart Work,  is a global freelancing platform and social networking where businesses and independent professionals connect and collaborate remotely</p>
								</div><!--cm-logo end-->	
								<img src="images/cm-main-img.png" alt="">			
							</div><!--cmp-info end-->
						</div>
						<div class="col-lg-6">
							<div class="login-sec">
								<ul class="sign-control">
									<li data-tab="tab-1" class="current"><a href="#" title="">Sign in</a></li>				
									<li data-tab="tab-2"><a href="#" title="">Sign up</a></li>				
								</ul>			
								<div class="sign_in_sec current" id="tab-1">
									
									<h3>Sign in</h3>
									<div class="form">
										<div class="row">
									    <asp:Label ID="user" runat="server"></asp:Label>
                                            		<div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<asp:TextBox ID="uname" runat="server" placeholder="Username"></asp:TextBox>
													<i class="la la-user"></i>
												</div><!--sn-field end-->
											</div>
											<div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<i class="la la-lock"></i><asp:TextBox ID="pass" TextMode="Password" runat="server" placeholder="Password" >
											</asp:TextBox>
												</div>
											</div>
											<div class="col-lg-12 no-pdd">
												<div class="checky-sec">
													<div class="fgt-sec">
														<input type="checkbox" name="cc" id="c1">
														<label for="c1">
															<span></span>
														</label>
														<small>Remember me</small>
													</div><!--fgt-sec end-->
													<a href="#" title="">Forgot Password?</a>
												</div>
											</div>
											<div class="col-lg-12 no-pdd">
												<asp:Button ID="signin" runat="server" Text="Sign-In" CssClass="inbtn" OnClick="signin_Click"></asp:Button>
											</div>
										</div>
                                        
									</div>
									<div class="login-resources">
										<h4>Login Via Social Account</h4>
										<ul>
											<li><a href="#" title="" class="fb"><i class="fa fa-facebook"></i>Login Via Facebook</a></li>
											<li><a href="#" title="" class="tw"><i class="fa fa-twitter"></i>Login Via Twitter</a></li>
										</ul>
									</div><!--login-resources end-->
								</div><!--sign_in_sec end-->
                              
								<div class="sign_in_sec" id="tab-2">
									<h3>Sign Up</h3>
                                      
										<div class="form">
                                            								<div class="row">
									<asp:Label ID="errr" runat="server" CssClass="alert alert-warning" Visible="false"></asp:Label>

									           		<div class="col-lg-12 no-pdd">
                                                           <div class="sn-field">
													<asp:TextBox ID="fullname" runat="server" placeholder="Full Name"     ></asp:TextBox>
													<i class="la la-envelope-o"></i>
												</div>
												<div class="sn-field">
													<asp:TextBox ID="email" runat="server" placeholder="E-Mail"     ></asp:TextBox>
													<i class="la la-envelope-o"></i>
												</div>
                                                           <div class="sn-field">
													<asp:TextBox ID="location" runat="server" placeholder="Your Location"     ></asp:TextBox>
													<i class="la la-envelope-o"></i>
												</div>
                                                           <!--sn-field end-->
											</div>
                                                <div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<i class="la la-user"></i><asp:TextBox ID="suser" runat="server" placeholder="Username" >
											</asp:TextBox>
												</div>
											</div>
											<div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<i class="la la-lock"></i><asp:TextBox ID="spass" runat="server" placeholder="Password"  >
											</asp:TextBox>
												</div>
											</div>
											<div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<i class="la la-lock"></i><asp:TextBox ID="cnfpass" runat="server" placeholder="Confrim Password"  >
											</asp:TextBox>
												</div>
											</div>
                                                <div class="col-lg-12 no-pdd">
													<div class="checky-sec st2">
														<div class="fgt-sec">
															<input type="checkbox" name="cc" id="c2"/>
															<label for="c2">
																<span></span>
															</label>
															<small>Yes, I understand and agree to the workwise Terms & Conditions.</small>
														</div><!--fgt-sec end-->
													</div>
												</div>
											<div class="col-lg-12 no-pdd">
												<asp:Button ID="start" runat="server" Text="Sign-In" CssClass="inbtn" OnClick="start_Click"></asp:Button>
											</div>
										</div>
                                        
										</div>
									
									<!--dff-tab end-->
								</div>		
							</div><!--login-sec end-->
						</div>
					</div>		
				</div><!--signin-pop end-->
			</div><!--signin-popup end-->
			<div class="footy-sec">
				<div class="container">
					<ul>
						<li><a href="#" title="">Help Center</a></li>
						<li><a href="#" title="">Privacy Policy</a></li>
						<li><a href="#" title="">Community Guidelines</a></li>
						<li><a href="#" title="">Cookies Policy</a></li>
						<li><a href="#" title="">Career</a></li>
						<li><a href="#" title="">Forum</a></li>
						<li><a href="#" title="">Language</a></li>
						<li><a href="#" title="">Copyright Policy</a></li>
					</ul>
					<p><img src="images/copy-icon.png" alt="">Copyright 2018</p>
				</div>
			</div><!--footy-sec end-->
		</div><!--sign-in-page end-->


	</div><!--theme-layout end-->

      


        
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="lib/slick/slick.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
        </form>
</body>
</html>