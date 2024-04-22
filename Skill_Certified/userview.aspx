<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userview.aspx.cs" Inherits="useredit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Skill Certified</title>


    <link href="../Stylesheet/StyleSheet.css" rel="stylesheet" />
    <script src="../JScript/JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="header">

                <div class="nav" id="nav">
                    <span onclick="openNav();ShowAndHide()">&#9776; </span>
                </div>
                <div class="navmenu" id="mySidenav">
                    <span><a href="javascript:void(0)" class="closebtn" onclick="closeNav();ShowAndHide();SS">&times;</a></span>
                    <div class="user_section">
                        <asp:Image ID="userimage" runat="server" ImageUrl="../images/user.png" />
                        <asp:Label ID="username" runat="server" Text="Sign In"></asp:Label>
                        <asp:Label ID="usermail" runat="server" Visible="false"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <hr />
                    <br />
                    <br />
                    <p style="color: white; text-align: center; font-size: 20px; color: #3e3e3e;">Main Menu</p>
                    <br />
                    <a href="index.aspx">Home</a>
                    <a href="dashboard.aspx">Dashboard</a>
                    <a>Courses</a>
                    <a id="sub" href="coursemanage.aspx">Manage Course</a>
                    <a id="sub" href="courseview.aspx">View Course</a>
                    <a>Users</a>
                    <a id="sub" href="usermanage.aspx">Manage Users</a>
                    <a id="sub" href="userview.aspx">View Users</a>
                    <a href="databaseview.aspx">Database</a>
                    <div class="logout">
                        <asp:Button ID="nav_logout" runat="server" Visible="false" />
                    </div>
                </div>

                <div class="logo">
                    <a href="../index.aspx">
                        <img src="../images/icon.png" /></a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" />
                </div>
            </div>

            <div class="bodysection" style="height: 1000px;">
                <h1>
                    Users
                </h1>
                <div class="users_manage">
                    <h2>
                        Manage Users
                    </h2>
                    <asp:GridView ID="user_show" CssClass="table_show" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="users_show" OnSelectedIndexChanged="user_show_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="l_name" HeaderText="l_name" SortExpression="l_name" />
                            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                            <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate" />
                            <asp:BoundField DataField="mail_id" HeaderText="mail_id" SortExpression="mail_id" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                
                            <asp:CommandField ButtonType="Button" HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" >
                            
                            <ItemStyle CssClass="manage_button" />
                            </asp:CommandField>
                            
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="users_show" runat="server" ConnectionString="<%$ ConnectionStrings:skill_certified %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                </div>
            </div>

            <div class="footer">
                <div class="footer-donate">
                    <img src="../images/icon.png" /><br />
                    <br />
                    <br />
                    <a href="../donateus.aspx">DONATE US</a>
                </div>
                <div class="footer_quick">
                    <br />
                    <span>QUICK LINKS</span>
                    <br />
                    <br />
                    <a href="../index.aspx">Home</a>
                    <br />
                    <br />
                    <a href="../certification.aspx">Certifications</a>
                    <br />
                    <br />
                    <a href="../about.aspx">About Us</a>
                    <br />
                    <br />
                    <a href="../contact.aspx">Contact Us</a>

                </div>
                <div class="footer_social">
                    <br />
                    <br />
                    <a class="facebook" href="#"><i class="fa fa-facebook">facebook</i></a><br />
                    <br />
                    <a class="twitter" href="#"><i class="fa fa-twitter">twitter</i></a><br />
                    <br />
                    <a class="linkedin" href="#"><i class="fa fa-linkedin">linked in</i></a><br />
                    <br />
                </div>
                <div class="footer_copyright">
                    Copyright &copy; 2021 Skill Certified
                </div>
            </div>
        </div>
    </form>
</body>
</html>
