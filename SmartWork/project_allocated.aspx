<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="project_allocated.aspx.cs" Inherits="project_allocated" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        /* ****************** RatingStar ****************** */
        .ratingStar {
            white-space: nowrap;
            margin: 1em;
            
        }

            .ratingStar .ratingItem {
                font-size: 0pt;
                width: 50px;
                height: 60px;
                margin: 0px;
                padding: 0px;
                display: block;
                background-repeat: no-repeat;
                cursor: pointer;
            }

            .ratingStar .Filled {
                background-image: url(images/starfilled.png);
            }

            .ratingStar .Empty {
                background-image: url(images/starempty.png);
            }

            .ratingStar .Saved {
                background-image: url(images/starempty.png);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper bg-light">
        <div class="row">
            <nav aria-label="breadcrumb ">
                <ol class="breadcrumb bg-light">
                    <li class="breadcrumb-item"><a href="#">Projects</a></li>
                    <li class="breadcrumb-item active">Allocated Projects</li>
                </ol>
            </nav>
        </div>
        <div class="container-fluid">
            <div class="row">
                <h1 class="h1 alert alert-dark">Allocated Projects</h1>
                <asp:Repeater ID="prj" runat="server">
                    <HeaderTemplate>
                        <table class="table table-bordered table-hover table-striped">
                            <thead class="thead-inverse">
                                <tr>
                                    <th class="text-center">Project Id
                                    </th>
                                    <th class="text-center">Project Name
                                    </th>
                                    <th class="text-center">Freelancer
                                    </th>
                                    <th class="text-center">Project Budget
                                    </th>
                                    <th class="text-center">View Project</th>

                                    <th class="text-center">Review
                                    </th>
                                    <th class="text-center">Confirm
                                    </th>
                                    <th class="text-center">Cancel
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>

                        <tr class="text-center">
                            <td>
                                <div class="form-control">
                                    <%#Eval("pid") %>
                                </div>
                            </td>
                            <td>
                                <div class="form-control">
                                    <%#Eval("project_name") %>
                                </div>
                            </td>
                            <td>
                                <div class="form-control">
                                    <%#Eval("bid_user") %>
                                </div>
                            </td>
                            <td>
                                <div class="form-control">
                                    <%#Eval("min_budget") %> -<%#Eval("max_budget") %>
                                </div>
                            </td>
                            <td>
                                <asp:LinkButton ID="filedownload" CommandArgument='<%#Eval("ow_file") %>' runat="server" CssClass="form-control" OnClick="filedownload_Click" Text="Download File"><i class="fa fa-download"> </i></asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="review" runat="server" CssClass="btn btn-outline-warning form-control" Text="Review" CommandName="edit" Enabled='<%# Eval("ow_status").ToString() == "viewed" ? true: false %>' CommandArgument='<%#Eval("pid") %>' OnClick="review_Click"></asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="confirm" runat="server" CssClass="btn btn-outline-success form-control" Enabled='<%# Eval("ow_status").ToString() == "viewed" ? true: false %>' CommandArgument='<%#Eval("pid") %>' Text="Confirm" OnClick="confirm_Click"></asp:LinkButton>

                            </td>
                            <td>
                                <asp:LinkButton ID="cancel" runat="server" CssClass="btn btn-outline-danger form-control" Enabled='<%# Eval("ow_status").ToString() == "viewed" ? true: false %>' CommandArgument='<%#Eval("pid") %>' Text="Cancel" OnClick="cancel_Click"></asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <div id="MyPopup" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content ">
                            <div class="modal-header text-center">

                                <h4 class="modal-title text-primary font-weight-bold h3"></h4>
                                
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <h3 class="text-left font-weight-bold">Freelancer Name:<i class='la la-lg la-user alert alert-dark'></i>
                                        <asp:Label ID="delta" runat="server" CssClass="alert alert-success delta"></asp:Label></h3>
                                    <asp:Label ID="bd" runat="server" Visible="false"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:Label ID="lbl" runat="server"
                                        Text="Give Ratings:" CssClass="font-weight-bold text-primary"></asp:Label>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"
                                        EnablePageMethods="true">
                                    </asp:ScriptManager>
                                    <cc1:Rating ID="Rating1" runat="server"
                                        MaxRating="5"
                                        CurrentRating="1"
                                        CssClass="ratingStar"
                                        StarCssClass="ratingItem"
                                        WaitingStarCssClass="Saved"
                                        FilledStarCssClass="Filled"
                                        EmptyStarCssClass="Empty">
                                    </cc1:Rating>
                                </div>

                            </div>
                            <div class="modal-footer">
                               <asp:Button ID="sub" runat="server" CssClass="btn btn-outline-primary font-weight-bold" Text="Submit" OnClick="sub_Click"/>
                                 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function ShowPopup(title) {
            $("#MyPopup .modal-title").html(title);
            $('#MyPopup').modal({ backdrop: 'static', keyboard: false });
            $("#MyPopup").modal("show");
        }
    </script>


</asp:Content>

