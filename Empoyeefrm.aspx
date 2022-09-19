<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Empoyeefrm.aspx.cs" Inherits="Empoyeefrm" %>

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
        width: 350px;
        background-color: #999999;
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
        .auto-style6 {
            font-size: xx-large;
            background-color: #FFFF99;
        }
        .auto-style7 {
            width: 53px;
        }
        .auto-style8 {
            width: 350px;
        }
        .auto-style9 {
            width: 350px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style11 {
            width: 350px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
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
                    <td class="auto-style7">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/imge/advoc.jpg" Width="60px" style="margin-right: 0px; background-color: #FFFF66;" />
      
                    </td>
                    <td class="auto-style6"><strong>DESHMUKH ADVOCATES</strong></td>
                </tr>
            </table>
                   
    <div>
    
        <table class="auto-style1">
            <tr>
                <td style="font-weight: 700; font-size: xx-large" class="auto-style2">Employee Information</td>
                
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="EmployeeID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEmployeeid" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="E Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEName" ErrorMessage="Enter proper Name" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label8" runat="server" Text="Date of birth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDob" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:TextBox ID="Txtsysdate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtsysdate" ControlToValidate="TxtDob" ErrorMessage="Enter correct Date of birth" Operator="LessThan" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label9" runat="server" Text="E-Mail Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEMail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtEMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Enter Correct E Mail ID" style="color: #FF0000"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="E Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtEAddress" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TxtContact" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtContact" ErrorMessage="Enter Proper Contact" style="color: #FF0000" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:RadioButton ID="mrbtn" runat="server" GroupName="gender" Text="Male" />
                    <asp:RadioButton ID="frbtn" runat="server" GroupName="gender" Text="Female" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" Text="Designation"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="TxtDesignation" runat="server">
                        <asp:ListItem Value="Jr Advocate">Jr Advocate</asp:ListItem>
                        <asp:ListItem>Sr Advocate</asp:ListItem>
                        <asp:ListItem>Clerk </asp:ListItem>
                        <asp:ListItem>Typist</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtDesignation" ErrorMessage="Enter Proper Designation" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtQualification" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtQualification" ErrorMessage="Enter Proper Qualification" style="color: #FF0000" ValidationExpression="^[A-Za-z ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Label ID="raj" runat="server" Text="-----"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Employeeid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Employeeid" HeaderText="Employeeid" ReadOnly="True" SortExpression="Employeeid" />
                    <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                    <asp:BoundField DataField="Eaddress" HeaderText="Eaddress" SortExpression="Eaddress" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString4 %>" DeleteCommand="DELETE FROM [Employeetbl] WHERE (([Employeeid] = @Employeeid) OR ([Employeeid] IS NULL AND @Employeeid IS NULL))" InsertCommand="INSERT INTO [Employeetbl] ([Employeeid], [ename], [Eaddress], [Contact], [Gender], [Qualification], [Designation], [Email], [Dob]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:mydbConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Employeetbl]" UpdateCommand="UPDATE [Employeetbl] SET [ename] = @ename, [Eaddress] = @Eaddress, [Contact] = @Contact, [Gender] = @Gender, [Qualification] = @Qualification, [Designation] = @Designation, [Email] = @Email, [Dob] = @Dob WHERE (([Employeeid] = @Employeeid) OR ([Employeeid] IS NULL AND @Employeeid IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="Employeeid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Employeeid" Type="Int32" />
                    <asp:Parameter Name="ename" Type="String" />
                    <asp:Parameter Name="Eaddress" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Qualification" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Dob" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ename" Type="String" />
                    <asp:Parameter Name="Eaddress" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Qualification" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Dob" Type="DateTime" />
                    <asp:Parameter Name="Employeeid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
