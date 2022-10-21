<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="university_management_system.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            height: 52px;
        }
        .auto-style2 {
            height: 75px;
        }
        .auto-style6 {
            width: 764px;
            height: 417px;
        }
        .auto-style7 {
            width: 199px;
        }
        .auto-style11 {
            width: 450px;
        }
        .auto-style12 {
            width: 209px;
        }
    </style>
    
</head>
<body>
    
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <br /><br />
            <table align="center" class="auto-style6">
                <tr>
                    <td colspan="2" style="border-style: solid solid none solid;" >
                    <h2 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-left-style: solid"; align="center"><b>First Name</b></td>
                    <td class="auto-style12" style="border-right-style: solid">
                        <asp:TextBox ID="txtfname" type="text" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;</td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rffname" runat="server" ControlToValidate="txtfname" ErrorMessage="please enter first name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-left-style: solid"; align="center"><b>Last Name</b></td>
                    <td class="auto-style12" style="border-right-style: solid">
                        <asp:TextBox ID="txtlname" type="text" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfname" runat="server" ControlToValidate="txtlname" ErrorMessage="please enter name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-left-style: solid;" align="center"><b>Email</b></td>
                    <td class="auto-style12" style="border-right-style: solid">
                        <asp:TextBox ID="txtemail" type="text" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfemail" runat="server" ControlToValidate="txtemail" ErrorMessage="please enter email" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-left-style: solid;" align="center"><b>Contact No</b></td>
                    <td class="auto-style12" style="border-right-style: solid">
                        <asp:TextBox ID="txtcontact" type="" runat="server" MaxLength="10"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfcontact" runat="server" ControlToValidate="txtcontact" ErrorMessage="please enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-left-style: solid;" align="center"><b>Password</b></td>
                    <td class="auto-style12" style="border-right-style: solid">
                        <asp:TextBox ID="txtpassword" type="password" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password must conain alphanumeric string of lenght 8" ForeColor="Red" ValidationExpression="[0-9|a-z|A-Z]{8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-left-style: solid;" align="center"><b>Confirm password</b></td>
                    <td class="auto-style12" style="border-right-style: solid">
                        <asp:TextBox ID="txtconpassword" type="password" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:CompareValidator ID="cvpassword" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconpassword" ErrorMessage="Password does not match" ForeColor="#FF5050"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2" style="border-top-style: none; border-right-style: solid; border-left-style: solid;">
                        <asp:Button ID="btnregister" runat="server" OnClick="Btnregister_Click" Text="Register" Font-Bold="True" Font-Size="Large" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="border-style: none solid solid solid;">
                        <asp:Label ID="Label2" Text="in you already have account " runat="server" ></asp:Label>
                            <asp:HyperLink ID="hllogin" runat="server" NavigateUrl="login.aspx">Login</asp:HyperLink>
                        <br />
                    </td>
                    <td></td>
                </tr>
            </table>

        </div>
        
    </form>
        
</body>
</html>
