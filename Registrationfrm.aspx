<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrationfrm.aspx.cs" Inherits="Registrationfrm" %>

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
            height: 26px;
        }
        .auto-style5 {
            font-size: xx-large;
            width: 57px;
        }
        .auto-style6 {
            background-color: #FFFF99;
            font-size: xx-large;
        }
        .auto-style7 {
            width: 316px;
        }
        .auto-style8 {
            width: 316px;
            height: 26px;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
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
    <form id="form1" runat="server">
         <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/imge/advoc.jpg" Width="60px" style="margin-right: 0px; background-color: #FFFF66;" />
      
                    </td>
                    <td class="auto-style6"><strong>DESHMUKH ADVOCATES</strong></td>
                </tr>
            </table>
        
          <div/>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td style="font-weight: 700; font-size: xx-large; background-color: #999999;" class="auto-style7">Case Registration</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Registration ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtRegid" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Case ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtcaseid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtcaseid" ErrorMessage="please enter case id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Case Title</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtctitle" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Previous Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtprevdate" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" Text="Court Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCourtname" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Client ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtClientID" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="C Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCName" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="Vs Party"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtVsparty" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label9" runat="server" Text="Case Position"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCaseposition" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label10" runat="server" Text="Next Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtNextdate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:TextBox ID="Txtsd" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
                </td>
                <td>
                    <asp:Label ID="raj" runat="server" Text="----"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Regid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Regid" HeaderText="Regid" ReadOnly="True" SortExpression="Regid" />
                    <asp:BoundField DataField="caseid" HeaderText="caseid" SortExpression="caseid" />
                    <asp:BoundField DataField="ctitle" HeaderText="ctitle" SortExpression="ctitle" />
                    <asp:BoundField DataField="Prevdate" HeaderText="Prevdate" SortExpression="Prevdate" />
                    <asp:BoundField DataField="Courtname" HeaderText="Courtname" SortExpression="Courtname" />
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                    <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                    <asp:BoundField DataField="Vsparty" HeaderText="Vsparty" SortExpression="Vsparty" />
                    <asp:BoundField DataField="Caseposition" HeaderText="Caseposition" SortExpression="Caseposition" />
                    <asp:BoundField DataField="Nextdate" HeaderText="Nextdate" SortExpression="Nextdate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString5 %>" DeleteCommand="DELETE FROM [Registbl] WHERE (([Regid] = @Regid) OR ([Regid] IS NULL AND @Regid IS NULL))" InsertCommand="INSERT INTO [Registbl] ([Regid], [caseid], [ctitle], [Prevdate], [Courtname], [ClientID], [CName], [Vsparty], [Caseposition], [Nextdate]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:mydbConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [Registbl]" UpdateCommand="UPDATE [Registbl] SET [caseid] = @caseid, [ctitle] = @ctitle, [Prevdate] = @Prevdate, [Courtname] = @Courtname, [ClientID] = @ClientID, [CName] = @CName, [Vsparty] = @Vsparty, [Caseposition] = @Caseposition, [Nextdate] = @Nextdate WHERE (([Regid] = @Regid) OR ([Regid] IS NULL AND @Regid IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="Regid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Regid" Type="Int32" />
                    <asp:Parameter Name="caseid" Type="Int32" />
                    <asp:Parameter Name="ctitle" Type="String" />
                    <asp:Parameter Name="Prevdate" Type="DateTime" />
                    <asp:Parameter Name="Courtname" Type="String" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="CName" Type="String" />
                    <asp:Parameter Name="Vsparty" Type="String" />
                    <asp:Parameter Name="Caseposition" Type="String" />
                    <asp:Parameter Name="Nextdate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="caseid" Type="Int32" />
                    <asp:Parameter Name="ctitle" Type="String" />
                    <asp:Parameter Name="Prevdate" Type="DateTime" />
                    <asp:Parameter Name="Courtname" Type="String" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="CName" Type="String" />
                    <asp:Parameter Name="Vsparty" Type="String" />
                    <asp:Parameter Name="Caseposition" Type="String" />
                    <asp:Parameter Name="Nextdate" Type="DateTime" />
                    <asp:Parameter Name="Regid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
