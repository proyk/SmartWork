<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="showprofile.aspx.cs" Inherits="showprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkWise Html Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/line-awesome.css">
<link rel="stylesheet" type="text/css" href="css/line-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="lib/slick/slick.css">
<link rel="stylesheet" type="text/css" href="lib/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
    <style>
        .coll
        {
            background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%);
            box-shadow: 3px 13px 5px 6px #ccc; 
        }
        .rd{
            border-radius:15px;
        }
        .news {
       background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%);
            box-shadow: 3px 13px 5px 6px #ccc;   }
        .ger{
      background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%);
            box-shadow: 3px 13px 5px 6px #ccc;    }
    </style>
</head>
    

<body>
	

	<div class="wrapper">
		




		<section class="cover-sec">
			<img id="pwall" runat="server" src="http://via.placeholder.com/1600x400" alt="" width="1600" height="400"/>
		</section>


		<main>
			<div class="main-section">
				<div class="container">
					<div class="main-section-data">
						
							
					
							<div class="col-lg-12">
								<div class="main-ws-sec">
									<div class="user-tab-sec">
                                        <div class="user-pro-img">
											<img id="ppt" runat="server" src="http://via.placeholder.com/170x170" alt="USer name" width="170" height="170"/>
										</div>
        
                                        <asp:Button ID="profile" runat="server"  Text="Edit Profile" CssClass="btn btn-danger float-lg-right" OnClick="profile_Click"/><br /><br />
										<asp:Label ID="name" runat="server" Text="" CssClass="alert alert-info font-weight-bold"></asp:Label>
										<div class="star-descp">
											<ul>
                                               Ratings: <% getrate(); %>
												
											</ul>
										</div><!--star-descp end-->
										<div class="tab-feed">
											<ul>
												<li data-tab="feed-dd" class="active">
													<a href="#" title="">
														<img src="images/ic1.png" alt="">
														<span>Personal Details</span>
													</a>
												</li>
											
                                                <li data-tab="info-dd">
													<a href="#" title="">
														<img src="images/ic3.png" alt=""/>
														<span>Skill</span>
													</a>
												</li>
											</ul>
										</div><!-- tab-feed end-->
									</div><!--user-tab-sec end-->
									<div class="product-feed-tab current" id="feed-dd">
										<div class="posts-section">
											<div class="process-comm font-weight-bold">
												<div class="row ">
       
                                                
                                               <div class="col-6 coll rd">
                                              <h3 class="h3 font-weight-bold text-light mt-1" style="font-family:'Adobe Hebrew'; font-size:30px;">First Name: </h3>
                                                 
                                             
                                                         
                                              
                                                   <asp:Label ID="fullname"  style="font-family:'Adobe Hebrew'; font-size:30px;" runat="server" Text="" CssClass=""></asp:Label>
                                               </div> 
                                               <div class="col-6 coll rd">
                                              <h3 class="h3 font-weight-bold text-light mt-1" style="font-family:'Adobe Hebrew'; font-size:30px;">Last Name: </h3>
                                                 
                                             
                                                         
                                              
                                                     <asp:Label ID="lastname" runat="server" style="font-family:'Adobe Hebrew'; font-size:30px;" Text="" CssClass="font-weight-bold"></asp:Label>
                                            
                                                </div>
                                                          
                                                    </div>  
                                                <div class="row  mt-1">
       
                                                
                                               <div class="col-6 ger rd">
                                              <h3 class="h3 font-weight-bold text-light mt-1" style="font-family:'Adobe Hebrew'; font-size:30px;">Mobile: </h3>
                                                 
                                             
                                                         
                                              
                                                 <asp:Label ID="mob" style="font-family:'Adobe Hebrew'; font-size:30px;" runat="server" Text="" CssClass=" "></asp:Label>
                                                 </div> 
                                               <div class="col-6 ger rd">
                                              <h3 class="h3 font-weight-bold text-light mt-1" style="font-family:'Adobe Hebrew'; font-size:30px;">Email: </h3>
                                                 
                                             
                                                         
                                                  <asp:Label ID="email" style="font-family:'Adobe Hebrew'; font-size:30px;" runat="server" Text="" CssClass=""></asp:Label>
                                               
                                                </div>
                                                          
                                                    </div>   
                                                <div class="row  mt-1">
       
                                                
                                               <div class="col-6 news rd">
                                              <h3 class="h3 font-weight-bold text-light mt-1" style="font-family:'Adobe Hebrew'; font-size:30px;">About: </h3>
                                                 
                                             
                                                         
                                                          
                                                   <asp:Label ID="des" style="font-family:'Adobe Hebrew'; font-size:30px;" runat="server" Text="" CssClass=""></asp:Label>
                                                </div> 
                                               <div class="col-6 news rd">
                                              <h3 class="h3 font-weight-bold text-light mt-1" style="font-family:'Adobe Hebrew'; font-size:30px;">Skills: </h3>
                                                 
                                             
                                                     <asp:Label ID="skl" runat="server"  style="font-family:'Adobe Hebrew'; font-size:30px;" Text="" CssClass=" text-capitalize"></asp:Label>
                                              
                                                </div>
                                                          
                                                    </div>   
                                               
                                                    </div>
											</div><!--process-comm end-->
										</div><!--posts-section end-->
									</div><!--product-feed-tab end-->
									<div class="product-feed-tab" id="info-dd">
										<div class="user-profile-ov">
											<h3>Overview</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. Nunc eu augue nec arcu efficitur faucibus. Aliquam accumsan ac magna convallis bibendum. Quisque laoreet augue eget augue fermentum scelerisque. Vivamus dignissim mollis est dictum blandit. Nam porta auctor neque sed congue. Nullam rutrum eget ex at maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget vestibulum lorem.</p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov st2">
											<h3>Experience</h3>
											<h4>Web designer</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
											<h4>UI / UX Designer</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id.</p>
											<h4>PHP developer</h4>
											<p class="no-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov">
											<h3>Education</h3>
											<h4>Master of Computer Science</h4>
											<span>2015 - 2018</span>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov">
											<h3>Location</h3>
											<h4>India</h4>
											<p>151/4 BT Chownk, Delhi </p>
										</div><!--user-profile-ov end-->
										<div class="user-profile-ov">
											<h3>Skills</h3>
											<ul>
												<li><a href="#" title="">HTML</a></li>
												<li><a href="#" title="">PHP</a></li>
												<li><a href="#" title="">CSS</a></li>
												<li><a href="#" title="">Javascript</a></li>
												<li><a href="#" title="">Wordpress</a></li>
												<li><a href="#" title="">Photoshop</a></li>
												<li><a href="#" title="">Illustrator</a></li>
												<li><a href="#" title="">Corel Draw</a></li>
											</ul>
										</div><!--user-profile-ov end-->
									</div><!--product-feed-tab end-->
									<div class="product-feed-tab" id="portfolio-dd">
										<div class="portfolio-gallery-sec">
											<h3>Portfolio</h3>
											<div class="gallery_pf">
												<div class="row">
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/271x174" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
													<div class="col-lg-4 col-md-4 col-sm-6 col-6">
														<div class="gallery_pt">
															<img src="http://via.placeholder.com/170x170" alt="">
															<a href="#" title=""><img src="images/all-out.png" alt=""></a>
														</div><!--gallery_pt end-->
													</div>
												</div>
											</div><!--gallery_pf end-->
										</div><!--portfolio-gallery-sec end-->
									</div><!--product-feed-tab end-->
								</div><!--main-ws-sec end-->
							</div>
							<div class="col-lg-3">
							
							</div>
						</div>
					</div><!-- main-section-data end-->
				</div> 
			</div>
		</main>


		<footer>
			<div class="footy-sec mn no-margin">
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
					<p><img src="images/copy-icon2.png" alt="">Copyright 2018</p>
					<img class="fl-rgt" src="images/logo2.png" alt="" height="90" width="200">
				</div>
			</div>
		</footer><!--footer end-->


		<div class="overview-box" id="create-portfolio">
			<div class="overview-edit">
				<h3>Create Portfolio</h3>
				<form>
					<input type="text" name="pf-name" placeholder="Portfolio Name">
					<div class="file-submit">
						<input type="file" name="file">
					</div>
					<div class="pf-img">
						<img src="http://via.placeholder.com/60x60" alt="">
					</div>
					<input type="text" name="website-url" placeholder="htp://www.example.com">
					<button type="submit" class="save">Save</button>
					<button type="submit" class="cancel">Cancel</button>
				</form>
				<a href="#" title="" class="close-box"><i class="la la-close"></i></a>
			</div><!--overview-edit end-->
		</div><!--overview-box end-->



	</div><!--theme-layout end-->


    <script>
        $(document).ready(function () {


            var readURL = function (input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('.avatar').attr('src', e.target.result);
                        pl(e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }
        });
    </script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="lib/slick/slick.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html></asp:Content>

