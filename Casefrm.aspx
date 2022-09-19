<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Casefrm.aspx.cs" Inherits="Casefrm" %>

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
        width: 358px;
        background-color: #999999;
    }
    .auto-style5 {
        height: 22px;
        width: 50px;
    }
    .auto-style9 {
        font-size: xx-large;
    }
</style>
   
    <title></title>
    
    
</head>
<body style="font-weight: 700">
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
     <%--  --%>
     <form id="form1" runat="server">
            <div>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/imge/advoc.jpg" Width="57px" />
                        </td>
                        <td style="font-weight: 700; font-size: xx-large; background-color: #FFFF99">DESHMUKH ADVOCATES</td>
                    </tr>
                </table>

            </div>   
       
            <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><span class="auto-style9">Case Facts</span> </td>
                
            </tr>
            
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="Client ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtclientid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtclientid" ErrorMessage="Enter Number Only" style="color: #FF0000" ValidationExpression="^[0-9]*\.?[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Client Name</asp:LinkButton>
                </td>
                <td>
                    <asp:TextBox ID="TxtCName" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
             
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Case ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtcaseid" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Case title"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="Txtctitle" runat="server">
                        <asp:ListItem>Civil Case</asp:ListItem>
                        <asp:ListItem>Criminal Case</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Case Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtcdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                     </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Text="Court Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtCourtname" runat="server"></asp:TextBox>
                </td>
                <td>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtCourtname" ErrorMessage="Enter Correct Court Name" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                     </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Case Handle By"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="Txtcasehdl" runat="server">
                        <asp:ListItem>Adv. Satish M Deshmukh</asp:ListItem>
                        <asp:ListItem>Adv. Chinmay Deshmukh</asp:ListItem>
                        <asp:ListItem>Adv. Prasad Deshmukh </asp:ListItem>
                        <asp:ListItem>Adv. Bhagyashree Wagh(Deshmukh)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Incident Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtincidate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" Text="Vs Party"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtVsparty" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtVsparty" ErrorMessage="Enter Correct Vs Party Name" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Place"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtplace" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Police Station"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtpolicestn" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtpolicestn" ErrorMessage="Enter Correct Details" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                 </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Discription"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtdescp" runat="server" Height="80px" Width="301px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Remark"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtrem" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Txtrem" ErrorMessage="Enter Correct Case Remark" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Label ID="raj" runat="server" Text="---"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
         <div>

             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="caseid" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="caseid" HeaderText="caseid" ReadOnly="True" SortExpression="caseid" />
                     <asp:BoundField DataField="ctitle" HeaderText="ctitle" SortExpression="ctitle" />
                     <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
                     <asp:BoundField DataField="casehdl" HeaderText="casehdl" SortExpression="casehdl" />
                     <asp:BoundField DataField="incidate" HeaderText="incidate" SortExpression="incidate" />
                     <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                     <asp:BoundField DataField="policestn" HeaderText="policestn" SortExpression="policestn" />
                     <asp:BoundField DataField="descp" HeaderText="descp" SortExpression="descp" />
                     <asp:BoundField DataField="remark" HeaderText="remark" SortExpression="remark" />
                     <asp:BoundField DataField="Clientid" HeaderText="Clientid" SortExpression="Clientid" />
                     <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                     <asp:BoundField DataField="Courtname" HeaderText="Courtname" SortExpression="Courtname" />
                     <asp:BoundField DataField="Vsparty" HeaderText="Vsparty" SortExpression="Vsparty" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString2 %>" DeleteCommand="DELETE FROM [Casetbl] WHERE (([caseid] = @caseid) OR ([caseid] IS NULL AND @caseid IS NULL))" InsertCommand="INSERT INTO [Casetbl] ([caseid], [ctitle], [cdate], [casehdl], [incidate], [place], [policestn], [descp], [remark], [Clientid], [CName], [Courtname], [Vsparty]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:mydbConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Casetbl]" UpdateCommand="UPDATE [Casetbl] SET [ctitle] = @ctitle, [cdate] = @cdate, [casehdl] = @casehdl, [incidate] = @incidate, [place] = @place, [policestn] = @policestn, [descp] = @descp, [remark] = @remark, [Clientid] = @Clientid, [CName] = @CName, [Courtname] = @Courtname, [Vsparty] = @Vsparty WHERE (([caseid] = @caseid) OR ([caseid] IS NULL AND @caseid IS NULL))">
                 <DeleteParameters>
                     <asp:Parameter Name="caseid" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="caseid" Type="Int32" />
                     <asp:Parameter Name="ctitle" Type="String" />
                     <asp:Parameter Name="cdate" Type="DateTime" />
                     <asp:Parameter Name="casehdl" Type="String" />
                     <asp:Parameter Name="incidate" Type="DateTime" />
                     <asp:Parameter Name="place" Type="String" />
                     <asp:Parameter Name="policestn" Type="String" />
                     <asp:Parameter Name="descp" Type="String" />
                     <asp:Parameter Name="remark" Type="String" />
                     <asp:Parameter Name="Clientid" Type="Int32" />
                     <asp:Parameter Name="CName" Type="String" />
                     <asp:Parameter Name="Courtname" Type="String" />
                     <asp:Parameter Name="Vsparty" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="ctitle" Type="String" />
                     <asp:Parameter Name="cdate" Type="DateTime" />
                     <asp:Parameter Name="casehdl" Type="String" />
                     <asp:Parameter Name="incidate" Type="DateTime" />
                     <asp:Parameter Name="place" Type="String" />
                     <asp:Parameter Name="policestn" Type="String" />
                     <asp:Parameter Name="descp" Type="String" />
                     <asp:Parameter Name="remark" Type="String" />
                     <asp:Parameter Name="Clientid" Type="Int32" />
                     <asp:Parameter Name="CName" Type="String" />
                     <asp:Parameter Name="Courtname" Type="String" />
                     <asp:Parameter Name="Vsparty" Type="String" />
                     <asp:Parameter Name="caseid" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>

         </div>
          </form>
</body>
</html>
