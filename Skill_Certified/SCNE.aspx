<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SCNE.aspx.cs" Inherits="SCPU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | SCNE</title>

    <link href="Stylesheet/StyleSheet.css" rel="stylesheet" />
    <script src="JScript/JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="header">

                <div class="nav" id="nav">
                    <span onclick="openNav();ShowAndHide()">&#9776; </span>
                </div>
                <div class="navmenu" id="mySidenav">
                    <span><a href="javascript:void(0)" class="closebtn" onclick="closeNav();ShowAndHide();">&times;</a></span>
                    <div class="user_section">
                        <asp:Image ID="userimage" runat="server" ImageUrl="images/user.png" />
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
                    <a href="certification.aspx">Certification</a>
                    <a href="exam.aspx">Examination</a>
                    <a href="exam.aspx">About Us</a>
                    <a href="contact.aspx">Contact Us</a>
                </div>

                <div class="logo">
                    <a href="index.aspx">
                        <img src="images/icon.png" /></a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" />
                </div>
            </div>
            <div class="bodysection" style="height: 800px;">

                <div class="SCheading">
                    <img src="images/sc2.png" />
                    <h1>CompTIA Network+ helps develop a career in IT infrastructure covering troubleshooting, configuring, and managing networks.
                    </h1>
                </div>
                <br />
                <br />
                <br />
                <br />
                <div class="SCcontent">
                    <div class="SCtext1">
                        <h1>Network+ ensures an IT professional has the knowledge and skills to:</h1>
                        <br />
                        <ul>
                            <li>Design and implement functional networks
                            </li>
                            <li>Configure, manage, and maintain essential network devices
                            </li>
                            <li>Use devices such as switches and routers to segment network traffic and create resilient networks
                            </li>
                            <li>
                                Identify benefits and drawbacks of existing network configurations
                            </li>
                            <li>
                                Implement network security, standards, and protocols
                            </li>
                            <li>
                                Troubleshoot network problems
                            </li>
                            <li>
                                Support the creation of virtualized networks
                            </li>
                        </ul>
                    </div>
                    <div class="SCimage">
                        <img src="images/scne%20desc.jpg" />
                    </div>
                    <div class="SCbuy">
                    <a href="scne_buy.aspx">Purchase</a>
                </div>
                </div>
            </div>
            <div class="footer">
                <div class="footer-donate">
                    <img src="images/icon.png" /><br />
                    <br />
                    <br />
                    <a href="donateus.aspx">DONATE US</a>
                </div>
                <div class="footer_quick">
                    <br />
                    <span>QUICK LINKS</span>
                    <br />
                    <br />
                    <a href="index.aspx">Home</a>
                    <br />
                    <br />
                    <a href="certification.aspx">Certifications</a>
                    <br />
                    <br />
                    <a href="about.aspx">About Us</a>
                    <br />
                    <br />
                    <a href="contact.aspx">Contact Us</a>

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
