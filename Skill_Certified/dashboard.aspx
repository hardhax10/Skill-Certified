<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="adminpanel_Default" %>

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
                        <asp:Button ID="nav_logout" runat="server" Visible="false" OnClick="nav_logout_Click" />
                    </div>
                </div>

                <div class="logo">
                    <a href="../index.aspx">
                        <img src="../images/icon.png" /></a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" OnClick="login_Click" />
                </div>
            </div>

            <div class="bodysection" style="height: 1000px;">
                <div class="admin">
                    
                    <h1 style="text-decoration:underline; text-align:center;">
                        Admin's Dashboard
                    </h1>
                    <br/>
                    <br/>

                </div>
                <div class="count">
                    <div class="count_name">
                        <h1>User count </h1>
                        <img src="images/count1.png" />
                    </div>

                    <div class="user_count">
                        <br />
                        <asp:Label ID="user_count" runat="server" Text="0"></asp:Label>
                    </div>
                </div>

                <div class="count">
                    <div class="count_name">
                        <h1>View count</h1>
                        <img src="images/count2.png" />
                    </div>

                    <div class="view_count">
                        <br />
                        <asp:Label ID="view_count" runat="server" Text="0"></asp:Label>
                    </div>
                </div>

                <div class="count">
                    <div class="count_name">
                        <h1>Buy Count</h1>
                        <img src="images/count3.png" />
                    </div>

                    <div class="buy_count">
                        <br />
                        <asp:Label ID="buy_count" runat="server" Text="0"></asp:Label>
                    </div>
                </div>

                <div class="count1">
                    <div class="count_name">
                        <h1>Online count </h1>
                        <img src="images/count4.png" />
                    </div>

                    <div class="online_count">
                        <br />
                        <asp:Label ID="online_count" runat="server" Text="0"></asp:Label>
                    </div>
                </div>
                <div class="graph">
                    <div class="graph_name">
                        User's on different browser
                    </div>
                    <img src="images/chart.png" />
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
