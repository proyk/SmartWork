<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="paymentaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <style>
       .padding {
    padding: 5rem !important
}

.form-control:focus {
    box-shadow: 10px 0px 0px 0px #ffffff !important;
    border-color: #4ca746
}
   </style>  
    <script src="validation.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/3.0.0/jquery.payment.min.js"></script>
    <div class="padding">
        
            <div class="container-fluid d-flex justify-content-center">
                <div class="col-sm-8 col-md-6">
                 
                    <div class="card">
                        <div class="card-header">
                            
                            <div class="row">
                                <div class="col-md-6"> <span class="h4">Payment Information</span> </div>
                                <div class="col-md-6 text-right" style="margin-top: -5px;"> <img src="https://img.icons8.com/color/36/000000/visa.png"> <img src="https://img.icons8.com/color/36/000000/mastercard.png"> <img src="https://img.icons8.com/color/36/000000/amex.png"> </div>
                            </div>
                        </div>
                        <div class="card-body" style="height: 350px">
                            <div class="form-group col-md-12"> <label for="cc-number" class="control-label">CARD NUMBER</label>
                               
                                 <asp:TextBox ID="ccnumber" runat="server"  TextMode="Phone" CssClass="input-lg form-control cc-number" placeholder="•••• •••• ••••"></asp:TextBox>
                             
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group"> <label for="cc-exp" class="control-label">CARD EXPIRY</label>
                                        <asp:TextBox ID="ccexp" runat="server" TextMode="Phone" CssClass="input-lg form-control cc-exp" placeholder="•• / ••"></asp:TextBox>
                                         </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"> <label for="cc-cvc" class="control-label">CARD CVC</label>
                                         <asp:TextBox ID="cccvc" runat="server" TextMode="Phone" CssClass="input-lg form-control cc-cvc" placeholder="••••"></asp:TextBox>
                                         
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                 <label for="numeric" class="control-label">CARD HOLDER NAME</label>
                                
                                <asp:TextBox ID="cname"  runat="server" CssClass="input-lg form-control"  ></asp:TextBox>
                                

                            </div><br /><br />
                            <div class="col-md-12">
                                <div class="row">
                            <div class="col-md-6"> 
                              
                             <asp:Button ID="pay" Text="Pay"  CssClass=" btn btn-success form-control" runat="server"  OnClick="pay_Click"/>
                                 
                              </div>
                               <div class="form-group col-md-6"> 
                            <input value="Close" type="button" class="btn btn-danger  form-control" />
                             </div>
                                    </div>
                                    </div>
                                </div>
                    </div>
                </div>
                </div>    
            </div>
        </div>

 <script>
     $('#ccnumber').mask('0000 0000 0000 0000');
 </script>
</asp:Content>

