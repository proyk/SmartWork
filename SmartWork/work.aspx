<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="work.aspx.cs" Inherits="work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="search-sec">
        <div class="container">
            <div class="row">
                 <nav aria-label="breadcrumb ">
                <ol class="breadcrumb bg-light">
                    <li class="breadcrumb-item"><a href="#">Projects</a></li>
                    <li class="breadcrumb-item active">Freelancer Work</li>
                </ol>
            </nav>
            </div>
            <div class="row text-light">
                 <div class="card first text-light" style="width:100%">
                               <div class="card-header">
                                       <h4 class="card-title">
                                           <h1 class="h3 font-weight-bold "><p class="font-weight-bold">Work Title:</p><asp:Label ID="wt" runat="server"></asp:Label><p class="float-right">Days Left:<asp:Label ID="let" runat="server"></asp:Label></p></h1>
                                            
                                </div>
                     <div class="card-body">
                         <h3 class="h5 text-light font-weight-bold"><asp:Label ID="desc" runat="server"></asp:Label></h3>
                         <h3 class="h4 text-light font-weight-bold">Bid Price:<asp:Label ID="prc" runat="server"></asp:Label></h3>
                    
                         <asp:FileUpload ID="flupload" runat="server" />

                          <asp:Button ID="proceed" runat="server" Text="Work Done" CssClass="btn btn-primary float-right" OnClick="proceed_Click"/>
                           
                         </div> </div>
            </div>
            <!--search-box end-->
        </div>
    </div>
    <!--search-sec end-->


    </asp:Content>

