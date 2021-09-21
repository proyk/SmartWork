<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="messages" EnableEventValidation="false" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
     
    </asp:ScriptManager>

    <section class="messages-page" style="margin-top:-40px">
        <div class="container">
            <div class="messages-sec">
                <div class="row">
                    <div class="col-lg-4 col-md-12 no-pdd">
                        <div class="msgs-list" style="height:500px;overflow:scroll">
                            <div class="msg-title">
                                <h3>Messages</h3>
                                <ul>
                                    <li><a href="#" title=""><i class="fa fa-cog"></i></a></li>
                                    <li><a href="#" title=""><i class="fa fa-ellipsis-v"></i></a></li>
                                </ul>
                            </div>
                            <!--msg-title end-->
                            <div class="messages-list">
                                <ul>
                                    <asp:Repeater ID="chatlist" runat="server" OnItemCommand="chatlist_ItemCommand">
                                        <ItemTemplate>

                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit" CommandArgument='<%#Eval("username") %>' OnClick="LinkButton1_Click">
                                                <li class="active">
                                                    <div class="usr-msg-details">
                                                        <div class="usr-ms-img">
                                                            <img src="http://via.placeholder.com/50x50" alt="" />
                                                            <span class="msg-status"></span>
                                                        </div>
                                                        <div class="usr-mg-info">
                                                            <h3>
                                                                <asp:Label ID="unm" runat="server"><%#Eval("username") %></asp:Label></h3>
                                                            <p>
                                                                Lorem ipsum dolor
                                                            <img src="images/smley.png" alt="">
                                                            </p>
                                                        </div>
                                                        <!--usr-mg-info end-->
                                                        <span class="posted_time">1:55 PM</span>
                                                        <span class="msg-notifc">1</span>
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
                     
                    <div class="col-lg-8 col-md-12 pd-right-none pd-left-none">
                          <div class="message-bar-head">
                                <div class="usr-msg-details">
                                    <div class="usr-ms-img">
                                        <img src="http://via.placeholder.com/50x50" alt="">
                                    </div>
                                    <div class="usr-mg-info">
                                        <h3>
                                            <label id="usr" runat="server"></label>
                                        </h3>
                                        <p>Online</p>
                                    </div>
                                    <!--usr-mg-info end-->
                                </div>
                                <a href="#" title=""><i class="fa fa-ellipsis-v"></i></a>
                            </div>
                        <div class="main-conversation-box" id="boxxxx" >
                         
                            <!--message-bar-head end-->
                            <div class="messages-line">
                                <div style=""></div>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                              
                                <hr />
                                <!--main-message-box end-->
                                <asp:UpdatePanel runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
                                    <ContentTemplate>
                                        <asp:Repeater ID="rept" runat="server" OnItemCommand="rept_ItemCommand">
                                            <ItemTemplate>

                                                <div class="main-message-box <%# Eval("send_user").ToString() == Session["user"].ToString() ? "ta-right": "st3" %>">
                                                    <div class="message-dt <%# Eval("send_user").ToString() == Session["user"].ToString() ? "": "st3" %>">
                                                        <div class="message-inner-dt">
                                                            <p><%#Eval("mdata") %></p>
                                                        </div>
                                                        <!--message-inner-dt end-->
                                                        <span>Sat, Aug 23, 1:08 PM</span>
                                                    </div>
                                                    <!--message-dt end-->
                                                    <div class="messg-usr-img">
                                                        <img src="http://via.placeholder.com/50x50" alt="" />
                                                    </div>
                                                    <!--messg-usr-img end-->
                                                </div>

                                                               </ItemTemplate>
                                        </asp:Repeater>
                                        <!--main-message-box end-->
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:Timer ID="Timer1" Interval="500" runat="server" OnTick="Timer1_Tick"></asp:Timer>

                                <!--main-message-box end-->
                            </div>
                            <!--messages-line end-->
                              </div>
                            <div class="message-send-area" id="send">

                                <div class="mf-field">
                                    <asp:TextBox ID="msgs" runat="server"  CssClass="msgtx" Placeholder="Enter Message" required></asp:TextBox>
                                    
                                    <asp:Button ID="sent" runat="server"  CssClass="sentbtn" Text="Send" ></asp:Button>
                                </div>
                                <ul>
                                    <li><a href="#" title=""><i class="fa fa-smile-o"></i></a></li>
                                    <li><a href="#" title=""><i class="fa fa-camera"></i></a></li>
                                    <li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
                                </ul>

                            </div>
                            <!--message-send-area end-->
                      
                        <!--main-conversation-box end-->
                    </div>
                </div>
            </div>
            <!--messages-sec end-->
        </div>
    </section>
    <!--messages-page end-->
 
    <script type="text/javascript">  
        $(document).ready(function () {
           
            $("input[id$='sent']").click(function () {
                // Do client side button click stuff here.
              
              var msg = $("input[id$=msgs]").val();
               var susr = $('#username').text();
               var rusr = $('#<%=usr.ClientID%>').text();
                $("input[id$=msgs]").val('');
                var hash = $("#send");
                var dl = "{'msg':'" + msg + "',susr:'" + susr + "',rusr:'" + rusr + "'}";
                
                
                if (rusr == "") {
                    alert("Plz... Select Receiver......");
                }
                else{

               
                    $.ajax({
                        url: 'messages.aspx/GetMsg',
                        method: 'post',
                        data: dl,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            
                           
                                // Add hash (#) to URL when done scrolling (default click behavior)
                                
                           
                            alert("Message Sent");
                        },
                        error: function (err) {

                            console.log(err);

                        }
                    });
                }
                
               
            });
        });
   </script>


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
                <p>
                    <img src="images/copy-icon2.png" alt="">Copyright 2018
                </p>
                <img class="fl-rgt" src="images/logo2.png" alt="">
            </div>
        </div>
    </footer>

    </div><!--theme-layout end-->
   
</asp:Content>

