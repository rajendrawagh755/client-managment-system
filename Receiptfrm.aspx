<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receiptfrm.aspx.cs" Inherits="Recieptfrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<style>
body {
  font-family: 'Lato', sans-serif;
}

.overlay {
  height: 0%;
  width: 100%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-y: hidden;
  transition: 0.5s;
}

.overlay-content {
  position: relative;
  top: 8%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 80px;
}

@media screen and (max-height: 450px) {
  .overlay {overflow-y: auto;}
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 194px;
    }
    .auto-style5 {
        height: 22px;
    }
</style>
   
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            background-color: #999999;
        }
        .auto-style5 {
            width: 28px;
        }
        .auto-style6 {
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>  
    <div>
    <div id="myNav" class="overlay" >
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
      <a href="Homepage.aspx">Home</a>
    <a href="clientfrm.aspx">Client Information Form</a>
      <a href="Empoyeefrm.aspx">Employee Information Form</a>
      <a href="Casefrm.aspx">Case Information Form</a>
      <a href="Registrationfrm.aspx">Registration Form</a>
    <a href="Receiptfrm.aspx">Receipt form</a>
    <a href="#">Clients</a>
    <a href="clientOpener.aspx">Clients Report</a>
   <a href="employeeOpener.aspx">Employees Reports</a>
   <a href="caseOpener.aspx">Case Reports</a>
   
      <a href="registrationOpener.aspx">case Registration Reports</a>
   <a href="receiptOpener.aspx">Reciept Reports</a>
   
       <a href="Login.aspx">Logout</a>
  </div>
</div>


<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>

       <script>
           function openNav() {
               document.getElementById("myNav").style.height = "100%";
           }

           function closeNav() {
               document.getElementById("myNav").style.height = "0%";
           }
</script>

    </div>
    
     </div>
        <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/imge/advoc.jpg" Width="60px" style="margin-right: 0px; background-color: #FFFF66;" />
      
                    </td>
                    <td class="auto-style6"><strong style="font-size: xx-large">DESHMUKH ADVOCATES</strong></td>
                </tr>
            </table>
        
            
    <div>
    
        <table class="auto-style1">
            <tr ="3">
                <td style="font-weight: 700; font-size: xx-large" class="auto-style2">Reciept</td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Reciept No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtRecieptno" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Reciept Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtRdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Client ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtClientID" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtClientID" ErrorMessage="please enter client id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">C Name</asp:LinkButton>
                </td>
                <td>
                    <asp:TextBox ID="TxtCName" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Feees Received"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtfee" runat="server" Enabled="False">0</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Reciept Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtRamt" runat="server">0</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Total Amount </asp:LinkButton>
                </td>
                <td>
                    <asp:TextBox ID="TxtTotalfee" runat="server" Enabled="False">0</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Label ID="raj" runat="server" Text="----"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
