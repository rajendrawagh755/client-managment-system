<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
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

                       <table>
                           <tr>
                               <td colspan="3">
                                   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login form"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style5">
                                   <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                               </td>
                               <td class="auto-style5">
                                   <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
                               </td>
                               <td class="auto-style5"></td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="passtxt" runat="server"></asp:TextBox>
                               </td>
                               <td></td>
                           </tr>
                           <tr>
                            <td colspan="3">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                               </td>
                           </tr>
                           <tr><td colspan="3">
                               <asp:Label ID="errorlbl" runat="server" Text="--"></asp:Label>
                               </td></tr>

                       </table>
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

