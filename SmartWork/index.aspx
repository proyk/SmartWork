<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main>
			<div class="main-section">
				<div class="container-fluid">
					<div class="main-section-data">
						<div class="row">
							<div class="col-lg-3 col-md-4 pd-left-none no-pd">
								<div class="main-left-sidebar no-margin">
									<div class="user-data full-width">
										<div class="user-profile">
											<div class="username-dt">
												<div class="usr-pic">
													<img id="pr_pic" runat="server" src="http://via.placeholder.com/100x100" alt="" height="100" width="100"/>
												</div>
											</div><!--username-dt end-->
											<div class="user-specs">
												<h3><label id="username" runat="server"></label></h3>
												<span>FreeLancer</span>
											</div>
										</div><!--user-profile end-->
										<ul class="user-fw-status">
											<li>
												<h4>Following</h4>
												<span>34</span>
											</li>
											<li>
												<h4>Followers</h4>
												<span>155</span>
											</li>
											<li>
												<a href="showprofile.aspx" title="">View Profile</a>
											</li>
										</ul>
									</div><!--user-data end-->
								</div><!--main-left-sidebar end-->
							</div>
							<div class="col-lg-9 col-md-8 no-pd container-fluid">
								<div class="main-ws-sec">
									<div class="post-topbar">
										<div class="user-picy">
											<img src="http://via.placeholder.com/100x100" alt="">
										</div>
										<div class="post-st">
											<ul>
												<li><a  href="post-project.aspx" title="">Post a Project</a></li>
												
											</ul>
										</div><!--post-st end-->
									</div><!--post-topbar end-->
									<div class="posts-section">
                                        
                                        <asp:Repeater ID="rept" runat="server">
                                            <ItemTemplate>
										<div class="post-bar">
											<div class="post_topbar">
												<div class="usy-dt">
													<img src="http://via.placeholder.com/50x50" alt="">
													<div class="usy-name">
														<h3><%#Eval("project_name") %></h3>
														<span><img src="images/clock.png" alt=""><%#Eval("post_time") %></span>
													</div>
												</div>
												<div class="ed-opts">
													<a href="#" title="" class="ed-opts-open"><i class="la la-ellipsis-v"></i></a>
													<ul class="ed-options">
														<li><a href="#" title="">Edit Post</a></li>
														<li><a href="#" title="">Unsaved</a></li>
														<li><a href="#" title="">Unbid</a></li>
														<li><a href="#" title="">Close</a></li>
														<li><a href="#" title="">Hide</a></li>
													</ul>
												</div>
											</div>
											<div class="epi-sec">
												<ul class="descp">
													<li><img src="images/icon8.png" alt=""><span>Epic Coder</span></li>
													<li><img src="images/icon9.png" alt=""><span>India</span></li>
												</ul>
												<ul class="bk-links">
													<li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
													<li><a href="#" title=""><i class="la la-envelope"></i></a></li>
                                                <li><a href="bid.aspx?bid=<%#Eval("pid") %>" title="" class="bid_now">Bid Now</a></li>
												</ul>
											</div>
											<div class="job_descp">
												
												<ul class="job-dt">
													<li><a href="#" title="">Full Time</a></li>
													<li><span>$<%#Eval("min_budget") %>-$<%#Eval("max_budget") %></span></li>
												</ul>
												<p><%#Eval("project_desc") %></p>
												<ul class="skill-tags" id="tags">
                                                                                   <%# gg(Eval("project_skill").ToString()) %>  
                                                                                                          
													
													
												</ul>
											</div>
											<div class="job-status-bar">
												<ul class="like-com">
													<li>
														<a href="#"><i class="la la-heart"></i> Like</a>
														<img src="images/liked-img.png" alt="">
														<span>25</span>
													</li> 
													<li><a href="#" title="" class="com"><img src="images/com.png" alt=""> Comment 15</a></li>
												</ul>
												<a href="user-profile.aspx?unm=<%#Eval("user_name") %>" class="text-capitalize">Posted By <label class="text-danger"><%#Eval("user_name") %></label></a>
											</div>
										</div><!--post-bar end-->
                                               
                                                   
                                                </ItemTemplate>
                                            </asp:Repeater>
														


		
	</div><!--theme-layout end-->

</asp:Content>

