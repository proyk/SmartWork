<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="profile.aspx.cs" Inherits="profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function pl(val) {

                alert(document.getElementById("fpath").files);
            }
        </script>


    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <hr>
        <div class="container bootstrap snippet">
            <div class="row">
                <div class="col-sm-10">
                    <h1>User name</h1>
                </div>
                <div class="col-sm-2">
                    <a href="/users" class="pull-right">
                        <img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->


                    <div class="text-center">
                        <asp:HiddenField ID="path" runat="server" />
                        
                        
                    </div>
    </hr>
    <br>


    <div class="panel">
        <div class="panel-heading">
            <h2 class="section-title">Profile Photo</h2>
        </div>


      
        <div class="text-center">
            <h6>Upload a different photo...</h6>
            <asp:FileUpload ID="fpath" runat="server" CssClass="btn btn-info profile-experience-add-btn " />
        </div>
              <br />
    </div>
   <div class="panel">
        <div class="panel-heading">
            <h2 class="section-title">Profile Wall</h2>
        </div>


      
        <div class="text-center">
            <h6>Upload a different photo...</h6>
            <asp:FileUpload ID="fwall" runat="server" CssClass="btn btn-info profile-experience-add-btn " />
        </div>
              <br />
    </div>
       



   









    </div><!--/col-3-->
    <div class="col-sm-9">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Personal information</a></li>
            <li><a data-toggle="tab" href="#messages">payment details</a></li>
            <li><a data-toggle="tab" href="#settings"></a></li>
        </ul>

         <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods="true">
                            </asp:ScriptManager>
        <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                <asp:Repeater ID="udata" runat="server">
                    <ItemTemplate>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <asp:Label ID="firstname" runat="server"><h4>First name</h4></asp:Label>

                                <asp:TextBox ID="first_name" runat="server" CssClass="form-control" placeholder="First Name" Text='<%#Eval("fname") %>'>  </asp:TextBox>


                            </div>



                        </div>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <asp:Label ID="lastname" runat="server"><h4>Last name</h4></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="last_name" runat="server" placeholder="last name" Text='<%#Eval("lname") %>'></asp:TextBox>
                            </div>
                        </div>



                        <div class="form-group">
                            <div class="col-xs-6">
                                <asp:Label ID="mobilee" runat="server"><h4>Mobile</h4></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="mobile" runat="server" placeholder="enter mobile number" Text='<%#Eval("mob") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <asp:Label ID="emaill" runat="server"><h4>Email</h4</asp:Label>
                                <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="you@email.com" title="enter your email." Text='<%#Eval("email") %>'></asp:TextBox>
                            </div>
                           

                            <div class="col-xs-6">
                                <asp:Label ID="skills" runat="server"><h4>Top Skills</h4</asp:Label>
                                <asp:TextBox CssClass="form-control tag" ID="skill" runat="server" placeholder="Your Most Top Skills" title="enter your email." Text='<%#Eval("skills") %>'></asp:TextBox>
                                <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers" MinimumPrefixLength="1"
                                    CompletionInterval="10" EnableCaching="false" CompletionSetCount="11"
                                    TargetControlID="skill"
                                    ID="AutoCompleteExtender1" runat="server" DelimiterCharacters="," FirstRowSelected="false" ShowOnlyCurrentWordInCompletionListItem="true">
                                </cc1:AutoCompleteExtender>
                            </div>
                            <div class="col-xs-12">
                                <asp:Label ID="desc" runat="server"><h4>Description</h4</asp:Label>
                                <asp:TextBox CssClass="form-control" ID="descc" TextMode="MultiLine" runat="server" Text='<%#Eval("u_desc") %>' placeholder="Tell me about Your Career" title="enter your email."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <asp:Label ID="locationn" runat="server"><h4>Location</h4></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="location" runat="server" placeholder="somewhere" title="enter a location" Text='<%#Eval("location") %>'></asp:TextBox>
                            </div>
                            <!--   <div class="col-xs-6">
                            <asp:Label ID="Label3" runat="server"><h4>Location</h4></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="somewhere" title="enter a location"></asp:TextBox>
                        </div>
                    </div>-->
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <asp:Label ID="passwordd" runat="server"><h4>Password</h4></asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="password" title="enter your password."></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <asp:Label ID="password22" runat="server"> <h4>Verify</h4></asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="password2" runat="server" placeholder="password2"></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <asp:Button ID="btnsave" runat="server" CssClass="btn btn-lg btn-success" Text="Save" OnClick="btnsave_Click"></asp:Button>
                                    <!-- <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i>Reset</button>-->
                                </div>

                            </div>



                            <script>
                                $(document).ready(function () {


                                    var readURL = function (input) {
                                        if (input.files && input.files[0]) {
                                            var reader = new FileReader();

                                            reader.onload = function (e) {
                                                $('#prof').attr('ImageUrl', e.target.result);
                                                pl(e.target.files[0].name);
                                            }

                                            reader.readAsDataURL(input.files[0]);
                                        }
                                    }


                                    $(".file-upload").on('change', function () {
                                        readURL(this);

                                    });
                                });
                            </script>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!--/tab-pane-->
        </div>
        <!--/tab-content-->
</asp:Content>

