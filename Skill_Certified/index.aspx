<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified</title>

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
                    <span id="closebtn"><a href="javascript:void(0)" class="closebtn" onclick="closeNav();ShowAndHide();">&times;</a></span>
                    <div class="user_section">
                        <asp:Image ID="userimage" runat="server" ImageUrl="images/user.png" />
                        <asp:Label ID="username" runat="server"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <hr />
                    <br />
                    <br />
                    <p style="color: white; text-align: center; font-size: 20px; color: #3e3e3e;">Main Menu</p>
                    <br />
                    <a href="dashboard.aspx" runat="server" visible="false" id="dashboard">Dashboard</a>
                    <a href="index.aspx">Home</a>
                    <a href="certification.aspx">Certification</a>
                    <a href="exam.aspx">Examination</a>
                    <a href="about.aspx">About Us</a>
                    <a href="contact.aspx">Contact Us</a>
                    <div class="logout">
                        <asp:Button ID="nav_logout" runat="server" Visible="false" OnClick="logout_Click" />
                    </div>
                </div>

                <div class="logo">
                    <a href="index.aspx">
                        <img src="images/icon.png" /></a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" OnClick="login_Click" />
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="photo">
                <img src="images/photo.png" style="width: 100%; margin: 0; padding: 0;" />

                <div class="hero-text">
                    <h1 style="font-size: 50px">Get Certified</h1>
                    <p>Escape the ordinary</p>
                    <br />
                    <br />
                    <a runat="server" id="reg_button" href="registerform.aspx">Register</a>
                </div>
            </div>
            <div class="bodysection" style="height: 1500px;">

                <div class="overview">
                    <h1>OVERVIEW
                    </h1>
                    <br />

                    <p>
                        The Skill Certified is a leading voice and advocate for the $5 trillion global information technology ecosystem; and the estimated 75 million industry and tech professionals who design, implement, manage, and safeguard the technology that powers the world’s economy. Through collaboration, education, certifications and market research, Skill Certified advances the industries and careers that rely on tech. We are the connected global community of informed advocates, championing modern technology (and the people who advance it) one day, one deployment, one discovery at a time.
                    </p>
                </div>
                <br />
                <br />
                <hr />
                <br />
                <br />

                <div class="certifications">
                    <h1>Certifications Available</h1>
                    <br />
                    <br />
                    <a href="SCPU.aspx">
                        <img src="images/sc1.png" alt="SCPU" class="image" /></a>
                    <a href="SCNE.aspx">
                        <img src="images/sc2.png" alt="SCNE" class="image" /></a>
                    <a href="SCPT.aspx">
                        <img src="images/sc3.png" alt="SCPT" class="image" /></a>
                    <a href="SCLE.aspx">
                        <img src="images/sc4.png" alt="SCLE" class="image" /></a>
                    <a href="SCCE.aspx">
                        <img src="images/sc5.png" alt="SCCE" class="image" /></a>
                    <div class="sc1overlay">
                    </div>
                </div>
                <hr />
                <div class="getting_started">
                    <br />
                    <br />
                    <h1>Getting Started
                    </h1>
                    <br />

                    <p>
                        The CCNA certification validates your skills and knowledge in network fundamentals, network access, IP connectivity, IP services, security fundamentals, and automation and programmability.
                    </p>
                    <br />
                    <p>
                        Here’s how to prepare for the exam:
                    </p>
                    <br />
                    <ul>
                        <li>Download the exam blueprint. This will be your road map as you prepare.</li>
                        <li>Join the Skill Certified Learning Network Skill Certified  community.</li>
                        <li>Sign up to receive updates and offers.</li>
                    </ul>

                </div>
                <br />
                <br />
                <hr/>
                <div class="events">

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
                    <a class="facebook" href="#"><i class="fa fa-facebook">Facebook</i></a><br />
                    <br />
                    <a class="twitter" href="#"><i class="fa fa-twitter">Twitter</i></a><br />
                    <br />
                    <a class="linkedin" href="#"><i class="fa fa-linkedin">Linked in</i></a><br />
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
