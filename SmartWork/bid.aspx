<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="bid.aspx.cs" Inherits="bid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
              .backdiv{
            width:800px;
           margin-top:100px;
         background-color: #8EC5FC;


           color:black;

  

}
  .descheight{
      height:250px; 

           }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      
<div class="container bg-light backdiv">
        <div class="container ">
            <hr />
            
            <div class="row">
           
             <asp:Label  ID="bidproject" runat="server" Text="" CssClass="h1 font-weight-bold text-secondary"></asp:Label>
            </div>
            <div class="row">
          

            
           
          
           
            <asp:Label ID="projectdesc" runat="server" Text="" CssClass="h5 alert alert alert-secondary"></asp:Label><hr />
            </div>
                <div class="text-center">            
                 <h3 class="h4 text-secondary font-weight-bold">Bid Details</h3>
                </div>

            <br />
            <div class="row">
            <div class="col-md-5">
                <i class="fas fa-rupee-sign"></i>
                <asp:TextBox  ID="budget" runat="server" CssClass="form-control text-center" placeholder="INR" ></asp:TextBox>
                  <h4 class="h6 font-weight-bold text-left text-success ">What is your Budget On this project</h4>
               <asp:RangeValidator ID="rng" runat="server" ControlToValidate="budget" CssClass="alert alert-danger"></asp:RangeValidator>
            </div>
             <div class="col-md-6">
                <asp:TextBox  ID="days" runat="server" CssClass="form-control"></asp:TextBox>
                   <h4 class="h6 font-weight-bold text-left text-success ">How Many Days You will complete this project?</h4>
            </div><br />
        </div><br />
           <div class="col-10">
        
            <asp:TextBox ID="biddesc" runat="server" TextMode="MultiLine"  CssClass="form-control descheight"  placeholder="Describe Your Proposal"></asp:TextBox>
            </div>  
            <br />
            <hr />
            
            <br />
            <div class="text-center text-capitalize">
         <asp:Button ID="placebid" runat="server" class="btn btn-success"  Text="Place Bid" OnClick="placebid_Click1"></asp:Button>
                
                </div>
            <hr />
    </div>
   
    </div>
</asp:Content>

