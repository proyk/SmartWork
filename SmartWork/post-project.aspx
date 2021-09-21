<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="post-project.aspx.cs" Inherits="post_project" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        /* .backdiv {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 10px 6px 20px 0 rgba(0, 0, 0, 0.19);
        }*/

        .backdiv2 {
            width: 800px;
            margin-top: 20px;
            color: black;
            /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 10px 6px 20px 0 rgba(0, 0, 0, 0.19);*/
        }

        .chknum:valid {
            color: green;
        }

        .chknum:invalid {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container bg-light backdiv">
        <div class="container text-center">
            <h1 class="h1 font-bold text-dark " style="text-shadow: 1px 1px black;">Post A Project</h1>

        </div>

        <div class="text-dark">
            <div class="container">
                <h2 class="h2 font-weight-bold">Tell us what you need done</h2>
                <p class="h6 font-weight-bold" style="color: #e44d3a">
                    Contact skilled freelancers within minutes. View profiles, ratings, portfolios and chat with them.<br />
                    Pay the freelancer only when you are 100% satisfied with their work.
                </p>
            </div>
        </div>
        <div class="container backdiv2">
            <br />
            <h3 class="h4 font-weight text-left">Chose name for your project</h3>
            <asp:TextBox ID="pname" runat="server" class="form-control" placeholder="e.g. Build me a website" required></asp:TextBox>
            <hr />
            <h3 class="h4 font-weight text-left">Tell us more about your project</h3>
            <br />
            <h3 class="h6 font-weight text-left">Start with a bit about yourself or your business, and include an overview of what you need done.</h3>

            <asp:TextBox TextMode="MultiLine" ID="pdesc" runat="server" class="form-control " placeholder="Describe Your Project here.." required></asp:TextBox>
            <hr />

            <asp:FileUpload ID="pupload" runat="server" CssClass=""  />
            <h3 class="h6 font-weight text-left">Start with a bit about yourself or your business, and include an overview of what you need done.</h3>

            <hr />



            <h3 class="h4 font-weight text-left">What skills are Required?</h3>

            <h3 class="h6 font-weight-bold text-left">Enter up to 5 skills that best describe your project. Freelancers will use these skills to find projects they are most interested and experienced in.</h3>
            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"
                    EnablePageMethods="true">
                </asp:ScriptManager>

                <asp:TextBox ID="pskill" runat="server" CssClass="form-control"></asp:TextBox>
                <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers"
                    MinimumPrefixLength="1"
                    CompletionInterval="10" EnableCaching="false" CompletionSetCount="11"
                    TargetControlID="pskill"
                    ID="AutoCompleteExtender1" runat="server" DelimiterCharacters="," FirstRowSelected="false" ShowOnlyCurrentWordInCompletionListItem="true">
                </cc1:AutoCompleteExtender>
            </div>


            <hr />




            <hr />
            <div class="col-md-12">
                <h4 class="h4 font-weight text-left ">What is your Esxtimated Budget?</h4>
                <div class="row">
                    <div class="col-md-2" style="">
                        <asp:Label ID="currency" runat="server" CssClass="form-control" Text="INR"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="minbudget" runat="server" CssClass="form-control" placeholder="Minimum Budget"></asp:TextBox>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="maxbudget" runat="server" CssClass="form-control" placeholder="Maximum Budget"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="text-center">
                    <asp:Button ID="btnsubmit" runat="server" Class="btn btn-success" Text="Submit" OnClick="btnsubmit_Click" />
                </div>
                <div id="MyPopup" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content ">
                            <div class="modal-header text-center">

                                <h4 class="modal-title text-primary font-weight-bold h3"></h4>
                                <div class="display-td ml-3">
                                    <img class="img-responsive pull-right" src="images/cards.png" />
                                </div>

                            </div>
                            <div class="modal-body">
                               <div class="form-group col-md-12"> <label for="cc-number" class="control-label">CARD NUMBER</label>
                               
                                 <asp:TextBox ID="ccnumber" runat="server"  TextMode="Phone" CssClass="input-lg form-control cc-number" placeholder="•••• •••• ••••"></asp:TextBox>
                             
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group"> <label for="cc-exp" class="control-label">CARD EXPIRY</label>
                                        <asp:TextBox ID="cardExpir" runat="server" TextMode="Phone" CssClass="input-lg form-control cc-exp"  placeholder="•• / ••" MaxLength="5" ></asp:TextBox>
                                         </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"> <label for="cc-cvc" class="control-label">CARD CVC</label>
                                         <asp:TextBox ID="cccvc" runat="server" TextMode="Phone" CssClass="input-lg form-control cc-cvc" placeholder="•••"  MaxLength="3"></asp:TextBox>
                                         
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                 <label for="numeric" class="control-label">CARD HOLDER NAME</label>
                                
                                <asp:TextBox ID="cname"  runat="server" CssClass="input-lg form-control"  ></asp:TextBox>
                                

                            </div><br /><br />
                            <div class="col-md-12">
                                <div class="row">
                            <div class="col-md-6"> 
                              <asp:HiddenField ID="fl" runat="server" />
                             <asp:Button ID="pay" Text="Pay"  CssClass=" btn btn-success form-control" runat="server" OnClick="pay_Click"  />
                                 
                              </div>
                               
                                    </div>
                                    </div>
                                </div>
                                 </div>
                                    <div class="modal-footer">
                                    </div>
                            </div>
                    </div>
                </div>
                <hr />
                <script type="text/javascript">
                    function ShowPopup(title) {
                        $("#MyPopup .modal-title").html(title);
                        $('#MyPopup').modal({ backdrop: 'static', keyboard: false });
                        $("#MyPopup").modal("show");
                    }
                    $(document).ready(function () {
                    
                        $("#cardExpir").keyup(function () {
                            if ($(this).val().length == 2) {
                                $(this).val($(this).val() + "/");
                            }
                        });
                        $("#crdnum").keypress(function () {
                            if ($(this).val().length == 4) {
                                $(this).val($(this).val() + "-");
                            }
                            else if ($(this).val().length == 9) {
                                $(this).val($(this).val() + "-");
                            }
                            else if ($(this).val().length == 14) {
                                $(this).val($(this).val() + "-");
                            }
                        });
                    });

                    
                </script>
</asp:Content>

