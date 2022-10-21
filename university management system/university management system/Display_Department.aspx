<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display_Department.aspx.cs" Inherits="university_management_system.Display_Department" %>

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
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
        </div>
         <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" GridLines="Horizontal" align="center" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
                    <asp:BoundField DataField="Hod " HeaderText="Hod " SortExpression="Hod " />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dept]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
