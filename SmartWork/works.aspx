<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="works.aspx.cs" EnableEventValidation="false" Inherits="works" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper bg-light">
        <div class="row">
            <nav aria-label="breadcrumb ">
                <ol class="breadcrumb bg-light">
                    <li class="breadcrumb-item"><a href="#">Projects</a></li>
                    <li class="breadcrumb-item active">Freelancer Works</li>
                </ol>
            </nav>
        </div>
        
        <div class="container-fluid">
            <div class="row">
                <h1 class="h1 text-warning font-weight-bold">Pending Works</h1>
                </div>
            
                <asp:Repeater ID="pwork" runat="server">
                    <ItemTemplate>
                        <div class="row container-fluid">
                           <div class="card first" style="width:100%">
                               <div class="card-header">
                                       <h4 class="card-title">
                                           <h1 class="h3 font-weight-bold"><p class="font-weight-bold">Work Title:</p><%#Eval("project_name") %><p class="float-right">Days Left:<%#getdays(Eval("startdate").ToString(),Eval("work_day").ToString())%></p></h1>
                                        <a href="work.aspx?oid=<%#Eval("ow_id") %>" class="font-weight-bold text-warning float-right">Details....</a>
                                              
                                </div>

                            </div>
                          
                        
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>  


</asp:Content>

