<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="postedproject.aspx.cs" Inherits="testbid" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <!-- ModalPopupExtender -->

    <section class="messages-page">


        <div class="messages-sec">
            <div class="row">
                <div class="col-lg-4 col-md-12 no-pdd">
                    <div class="msgs-list" style="height: 500px; overflow: scroll">
                        <div class="msg-title">
                            <h3>Posted Projects</h3>

                        </div>
                        <!--msg-title end-->
                        <div class="messages-list">
                            <ul>
                                <asp:Repeater ID="chatlist" runat="server" OnItemCommand="chatlist_ItemCommand">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit" CommandArgument='<%#Eval("project_name") %>' OnClick="LinkButton1_Click">
                                            <li class="active">
                                                <div class="usr-msg-details">

                                                    <div class="usr-mg-info">
                                                        <h3>
                                                            <asp:Label ID="unm" runat="server"><%#Eval("project_name") %></asp:Label></h3>
                                                        <p>
                                                            <%#Eval("post_time") %>
                                                        </p>
                                                    </div>
                                                    <!--usr-mg-info end-->
                                                    <span class="msg-notifc"><%# cnt(Eval("pid").ToString()) %></span>
                                                </div>
                                                <!--usr-msg-details end-->
                                            </li>
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!--messages-list end-->
                    </div>
                    <!--msgs-list end-->
                </div>
                <div class="col-lg-8 col-md-12 pd-right-none pd-left-none bg-light" style="height: 500px; overflow: scroll">
                    <div class="message-bar-head" style="z-index: 10">
                        <div class="usr-msg-details">

                            <div class="usr-mg-info">
                                <h3>
                                    <label id="usr" runat="server" class="h1"></label>
                                </h3>

                            </div>
                            <!--usr-mg-info end-->
                        </div>
                        <a href="#" title=""><i class="fa fa-ellipsis-v"></i></a>
                    </div>
                    <div class="main-conversation-box" id="boxxxx">
                        <asp:Label ID="projectname" runat="server" CssClass="alert-danger" Text=""></asp:Label>
                        <div class="col-md-12 text-center">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Repeater ID="rept" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered table-hover table-striped table-primary table-responsive">
                                        <thead class="thead-inverse text-center font-weight-bold">

                                            <th class="text-center">User</th>
                                            <th class="text-center">Bid Proposal</th>
                                            <th class="text-center">Bid Budget</th>
                                            <th class="text-center">Work Days</th>
                                            <th class="text-center">Mail</th>

                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr class="text-center">
                                        <td><%#Eval("bid_user") %></td>
                                        <td><%#Eval("bid_desc") %></td>
                                        <td><%#Eval("budget") %></td>
                                        <td><%#Eval("work_day") %></td>
                                        <td>
                                            <asp:LinkButton ID="mail" runat="server" CommandName="s_mail" CommandArgument='<%#Eval("b_id") %>' CssClass="btn btn-info btn-lg" OnClick="ShowPopup" Text="Accept Bid"></asp:LinkButton>

                                        </td>
                                    </tr>
                                    
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                            <div id="MyPopup" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header text-center">

                                            <h4 class="modal-title text-primary font-weight-bold h3"></h4>
                                            <button type="button" class="close" data-dismiss="modal">
                                                &times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <h3 class="text-left font-weight-bold">Send To: <i class='la la-lg la-envelope-o alert alert-dark'></i>
                                                    <asp:Label ID="delta" runat="server" CssClass="alert alert-success delta"></asp:Label></h3>
                                            <asp:Label ID="bd" runat="server" Visible="false"></asp:Label>
                                            </div>
                                            <div class="row ml-5 text-right">
                                                <asp:TextBox ID="sub" runat="server" CssClass="form-control" placeholder="Subject......"></asp:TextBox>
                                            </div>
                                            <br />
                                            <div class="row ml-5">
                                                <asp:TextBox ID="m_body" runat="server" CssClass="form-control font-weight-bold" placeholder="Type Messages That You want to Suggest Freelancer In Project........" TextMode="MultiLine"></asp:TextBox>
                                           <asp:HiddenField ID="pd" runat="server" />
                                                 </div>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:LinkButton ID="m_send" runat="server" CssClass="btn btn-success btn-lg" Text="Send" OnClick="mail_Click" CommandArgument='<%#Eval("p_id") %>'  ></asp:LinkButton>
                                            <button type="button" class="btn btn-danger btn-lg" data-dismiss="modal">
                                                Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <script type="text/javascript">
        function ShowPopup(title) {
            $("#MyPopup .modal-title").html(title);
            $("#MyPopup").modal("show");
        }
    </script>
</asp:Content>

