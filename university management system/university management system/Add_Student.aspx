<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Student.aspx.cs" Inherits="university_management_system.Add_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        body{
            height: 100%;
            margin: 0;
        }
        .auto-style1 {
            width: 100%;
            height: 78px;
        }
        
        .auto-style2 {
            width: 250px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color: black;
        }
        .auto-style2:hover{
            background-color: grey;
            padding: 10px;
        }
        
        .auto-style3 {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        
        .auto-style4 {
          width: 384px;
          height: 209px;
      }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC; font-size: 24px;">
           <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" style="font-family: System">&nbsp;</td>
                        <td class="auto-style2"><center>
                            <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="~/Images/1.png" />&nbsp;<asp:HyperLink ID="hlhome" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" NavigateUrl="home.aspx" Font-Italic="True">Home</asp:HyperLink></center></td>
                        <td class="auto-style2">
                            <center>
                                <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/Images/4.png" />&nbsp;<asp:HyperLink ID="hldept" runat="server" ForeColor="Black" NavigateUrl="Department.aspx" Font-Bold="True" Font-Italic="True" Font-Size="Large">Department</asp:HyperLink></center></td>
                        <td class="auto-style2">
                            <center>
                                <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Images/3.png" />&nbsp;<asp:HyperLink ID="hlfaculty" runat="server" ForeColor="Black" NavigateUrl="Faculty.aspx" Font-Bold="True" Font-Italic="True" Font-Size="Large">Faculty</asp:HyperLink></center></td>
                        <td class="auto-style2">
                            <center>
                                <asp:Image ID="Image7" runat="server" Height="20px" ImageUrl="~/Images/2.png" />&nbsp;<asp:HyperLink ID="hlstudent" runat="server" ForeColor="Black" NavigateUrl="Student.aspx" Font-Bold="True" Font-Italic="True" Font-Size="Large">Student</asp:HyperLink></center></td>
                        <td class="auto-style2">
                            <center>
                                <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/Images/5.png" />&nbsp;<asp:HyperLink ID="hlcourse" runat="server" ForeColor="Black" NavigateUrl="course.aspx" Font-Bold="True" Font-Italic="True" Font-Size="Large">Courses</asp:HyperLink></center></td>
                        <td class="auto-style2">
                            <center>
                                <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/Images/10.png" />&nbsp;<asp:HyperLink ID="hllogout" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black" NavigateUrl="Login.aspx">Logout</asp:HyperLink></center></td>
                        <td class="auto-style2">
                            &nbsp;</td>
                </tr>
              </table>      
         </div>
            <br /> <br /> <br /> <br /> 
        <table align="center" class="auto-style4">
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Name</td>
                <td >
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <br/>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Semester</td>
                <td >
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Year</td>
                <td >
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Department</td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Course</td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Seat</td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>GIA</asp:ListItem>
                        <asp:ListItem>SFI</asp:ListItem>
                        <asp:ListItem>NRI</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold">
                    Contact No.</td>
                <td >
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" >
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsave" runat="server" Text="save" CssClass="auto-style3" Width="96px" Font-Bold="True" Font-Italic="True" Font-Size="Small" OnClick="btnsave_Click" />
                &nbsp;
                        </td>
            </tr>
            <tr>
                <td colspan="2" >
                    <asp:Label ID="Label1" runat="server" Text="" align="center"></asp:Label>
                        </td>
            </tr>
        </table>
    </form>
       
    
</body>
</html>



 
