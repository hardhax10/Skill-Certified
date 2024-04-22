<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SCPT.aspx.cs" Inherits="SCPU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | SCPT</title>

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
            <div class="bodysection" style="height: 2000px;">

                <div class="SCheading">
                    <img src="images/sc1.png" />
                    <h1>Skill Certified Professional User (SCPU) is an introduction to basic IT knowledge and skills.
                    </h1>
                </div>
                <br />
                <br />
                <br />
                <br />
                <div class="SCcontent">
                    <div class="SCtext1">
                        <h1>Why is it different?</h1>
                        <br />
                        <p>
                            Skill Certified certifications helps professionals to decide if a career in IT is right for them or to develop a broader understanding of IT.
                        </p>
                        <br />
                        <ul>
                            <li>ITF+ is the only pre-career certification that helps students or career changers determine if they have a competency for information technology and if it is the right career path for them.
                            </li>
                            <li>ITF+ is the only single certification that covers all areas of IT foundations, creating a broader understanding of IT making it ideal for non-technical professionals.
                            </li>
                            <li>ITF+ establishes an IT education framework for students in middle school and high school.
                            </li>
                        </ul>
                    </div>
                    <div class="SCimage">
                        <img src="images/scpu%20desc.jpg" />
                    </div>
                    <div class="SCtext2">
                        <h1>About the exam</h1>
                        <br />
                        <p>
                            The CompTIA IT Fundamentals exam focuses on the essential IT skills and knowledge needed to perform tasks commonly performed by advanced end-users and entry-level IT professionals alike, including:
                        </p>
                        <br/>
                        <ul>
                            <li>Using features and functions of common operating systems and establishing network connectivity
                            </li>
                            <li>Identifying common software applications and their purpose
                            </li>
                            <li>Using security and web browsing best practices
                            </li>
                        </ul>
                        <br />
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
