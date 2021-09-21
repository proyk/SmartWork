<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing2.aspx.cs" Inherits="testing2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function sc() {
            var objDiv = document.getElementById("parentDiv");
            objDiv.scrollTop = objDiv.scrollHeight;
        }
    </script>
    <style>
        #parentDiv{
  width:115px;
  height:100px;
  overflow:auto;
  border: 2px black solid;
}
    </style>
</head>
<body onload="sc()">
    <form id="form1" runat="server">
    <div>

        <div id="parentDiv">
  <div class="people">1</div>
  <div class="people">2</div>
  <div class="people">3</div>
  <div class="people">4</div>
  <div class="people">5</div>
  <div class="people">6</div>
  <div class="people">7</div>
  <div class="people">8</div>
  <div class="people">9</div>
  <div class="people">9</div>
  <div class="people">9</div>
  <div class="people">9</div>
  <div class="people">9</div>
  <div class="people">90</div>
</div>
    
    </div>
    </form>
</body>
</html>
