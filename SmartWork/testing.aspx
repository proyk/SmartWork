<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing.aspx.cs" Inherits="testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #parentDiv{
  width:1115px;
  height:100px;
  overflow:auto;
  border: 2px black ridge;
  padding:10px;
}
    </style>
    <script type="text/javascript">
        function sc() {
            var objDiv = document.getElementById("parentDiv");
            objDiv.scrollTop = objDiv.scrollHeight;
        }
    </script>
</head>
<body onload="sc()">
    <form id="form1" runat="server">
    <div>
        
     <div>
        <h2 style="float:left">Chat Messages</h2>
            <h1 style="color:orangered;text-align:right"><asp:Label ID="username" runat="server"></asp:Label></h1>
        </div>
         <asp:ScriptManager ID="ScriptManager1" runat="server">

            
        </asp:ScriptManager>
       
            <div id="parentDiv">
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
        <ContentTemplate>
           <asp:Repeater ID="rept" runat="server">
               <HeaderTemplate>
                  
               </HeaderTemplate>
                <ItemTemplate>
                 
                    <div class="people">
                    <p><%#Eval("mdata") %></p>
                    </div>
              
                </ItemTemplate>
               <FooterTemplate>
                  
               </FooterTemplate>
           </asp:Repeater>
        </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
                
            </div>
         <asp:Label ID="warn" runat="server" BackColor="PaleVioletRed"></asp:Label><br />
        <asp:Timer ID="Timer1" Interval="100" runat="server" OnTick="Timer1_Tick"></asp:Timer>
         <asp:Label ID="lbl" runat="server" Font-Bold="true">Enter Message:</asp:Label>
        <asp:TextBox ID="msg" runat="server" BackColor="YellowGreen"></asp:TextBox>
          <asp:Button ID="send" runat="server" Text="Send MSG" OnClientClick="scl()" OnClick="send_Click" />
    </div>
    </form>
</body>
</html>
