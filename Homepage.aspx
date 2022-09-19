<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

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
  top: 5%;
  width: 100%;
  text-align: center;
  margin-top: 15px
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
  font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay {overflow-y: auto;}
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 20px;
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
    .auto-style3 {
        font-weight: normal;
    }
    .auto-style4 {
        width: 194px;
        height: 22px;
    }
    .auto-style5 {
        height: 22px;
    }
</style>
   
    <title></title>
</head>
<body style="background-image: url('imge/psd.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
      
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
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">            
                        <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl="~/imge/sdeshmukh.JPG" style="margin-left: 30px" Width="129px" />
                        <br />
                        <p style="color: #FFFFFF; font-size: medium; font-weight: 700; text-align: center; background-color: #000000">
                      Name:-<br /> <span class="auto-style3">ADV.Satish Deshmukh</span>
                       
                      Designation:-<br /><span class="auto-style3">Criminal lawyer
                      
                       At Dhule District Court.
                        </span>
                        </p>
                    </td>
                   <td>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
          </form>
    </body>
</html>
