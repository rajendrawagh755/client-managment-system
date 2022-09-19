<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clientfrm.aspx.cs" Inherits="clientfrm" %>

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
  top: 15px;
  right: 45px;
  font-size: 80px;
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
        width: 358px;
    }
    .auto-style5 {
        height: 22px;
        width: 50px;
    }
    .auto-style6 {
        background-color: #FFFF99;
    }
    .auto-style7 {
        width: 358px;
        font-weight: normal;
    }
    .auto-style8 {
        font-weight: normal;
    }
</style>
   
    <title></title>
    
</head>
<body style="font-weight: 700">
     <div>  
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

    
    <form id="form1" runat="server">
        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/imge/advoc.jpg" Width="60px" style="margin-right: 0px; background-color: #FFFF66;" />
      
                    </td>
                    <td class="auto-style6"><strong style="font-size: xx-large">DESHMUKH ADVOCATES</strong></td>
                </tr>
            </table>
           
       
    <div>
    <div>
    
        <table class="auto-style1">
            <tr ="4">
                <td style="font-weight: 700; font-size: xx-large" class="auto-style2">Client&nbsp; Registration</td>
                <td></td>
                
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Client ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtClientID" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="C Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtCName" ErrorMessage="Enter Correct Name" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:RadioButton ID="mrbtn" runat="server" GroupName="gender" Text="Male" />
                    <asp:RadioButton ID="frbtn" runat="server" GroupName="gender" Text="Female" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtage" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtage" ErrorMessage="Enter Correct Age" style="color: #FF0000" ValidationExpression="^[0-9]*\.?[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="C Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCAddress" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtContact" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtContact" ErrorMessage="Enter Correct Contact...." style="color: #FF0000" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Text="E-Mail Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEMail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtEMail" ErrorMessage="Enter Correct E Mail ID" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     <asp:Label ID="Label5" runat="server" Text="ID Proof"></asp:Label>
                </td>
                 <td>
                     <asp:DropDownList ID="TxtIDproof" runat="server">
                         <asp:ListItem>Adhar Card</asp:ListItem>
                         <asp:ListItem>Voter ID </asp:ListItem>
                         <asp:ListItem>PAN Card</asp:ListItem>
                         <asp:ListItem>Driving Liecence</asp:ListItem>
                         <asp:ListItem>Other ID Cards</asp:ListItem>
                     </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>
                     <asp:Label ID="raj" runat="server" Text="------"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClientID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" SortExpression="ClientID" />
                    <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                    <asp:BoundField DataField="CAddress" HeaderText="CAddress" SortExpression="CAddress" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="IDproof" HeaderText="IDproof" SortExpression="IDproof" />
                    <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString3 %>" DeleteCommand="DELETE FROM [Clienttbl] WHERE (([ClientID] = @ClientID) OR ([ClientID] IS NULL AND @ClientID IS NULL))" InsertCommand="INSERT INTO [Clienttbl] ([ClientID], [CName], [gender], [age], [EMail], [CAddress], [Contact], [IDproof], [Fee]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:mydbConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Clienttbl]" UpdateCommand="UPDATE [Clienttbl] SET [CName] = @CName, [gender] = @gender, [age] = @age, [EMail] = @EMail, [CAddress] = @CAddress, [Contact] = @Contact, [IDproof] = @IDproof, [Fee] = @Fee WHERE (([ClientID] = @ClientID) OR ([ClientID] IS NULL AND @ClientID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="ClientID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="CName" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="EMail" Type="String" />
                    <asp:Parameter Name="CAddress" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="IDproof" Type="String" />
                    <asp:Parameter Name="Fee" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CName" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="EMail" Type="String" />
                    <asp:Parameter Name="CAddress" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="IDproof" Type="String" />
                    <asp:Parameter Name="Fee" Type="Int32" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
