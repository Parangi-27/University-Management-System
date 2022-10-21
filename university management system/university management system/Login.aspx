<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="university_management_system.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 121px;
            height: 36px;
        }
        .auto-style9 {
            width: 420px;
        }
        .auto-style10 {
            width: 211px;
            height: 36px;
        }
        .auto-style11 {
            height: 36px;
            margin-top: 0px;
        }
        .auto-style12 {
            height: 320px;
            width: 540px;
            margin-top: 0px;
        }
        .auto-style13 {
            height: 45px;
        }
        .auto-style14 {
            width: 420px;
            height: 45px;
        }
        .auto-style15 {
            width: 121px;
            height: 45px;
        }
        .auto-style16 {
            width: 211px;
            height: 45px;
        }
        .auto-style17 {
            height: 45px;
            margin-top: 0px;
        }
        .auto-style18 {
            height: 62px;
        }
        .auto-style19 {
            width: 420px;
            height: 62px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <br /><br /><br />
            <table align="center" class="auto-style12">
                <tr>
                    <td colspan="2" align="center" style="border-style: solid solid none solid">
                    <h2>Login</h2>
                        </td>
                    <td class="auto-style9">

                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="border-right-style: none; border-bottom-style: none; border-left-style: solid;" align="center"><b>username</b></td>
                    <td style="border-right-style: solid" class="auto-style16">
                        <asp:TextBox ID="loginfname" type="text" runat="server" Width="105px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="rfname" runat="server" ControlToValidate="loginfname" ErrorMessage="please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4" style="border-right-style: none; border-bottom-style: none; border-left-style: solid;" align="center"><b>Password</b></td>
                    <td style="border-right-style: solid" class="auto-style10">
                        <asp:TextBox ID="loginpassword"  type="password" runat="server" Width="105px"></asp:TextBox>
                    </td>
                   <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfpass" runat="server" ControlToValidate="loginfname" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td colspan="2" align="center"  style="border-left-style: solid; border-right-style: solid;" class="auto-style18">
                        <asp:Button ID="btnregister" runat="server" Text="Login" Font-Bold="True" Font-Size="Large" OnClick="btnregister_Click" />
                    </td>
                    <td class="auto-style19" ></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="border-left-style: solid; border-right-style: solid; border-bottom-style: hidden;">
                        <asp:Label ID="Label2" Text="if you don't have account " runat="server" ></asp:Label>
                            <asp:HyperLink ID="hllogin" runat="server" NavigateUrl="registration.aspx">sign up</asp:HyperLink>
               
                    </td>
                    <td class="auto-style9"> &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="border-left-style: solid; border-right-style: solid; border-bottom-style: solid;" class="auto-style13">
                        <asp:Label ID="Label3" runat="server" align="center" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
            </table>
            <br /><br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
      </form>
</body>
</html>
