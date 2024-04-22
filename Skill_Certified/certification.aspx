<%@ Page Language="C#" AutoEventWireup="true" CodeFile="certification.aspx.cs" Inherits="certification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | Certifcations</title>
    <link rel="icon" href="title_icon.png" type="image/x-icon" />
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
            <div class="bodysection" style="height: 200%;">
                <h1>Skill Certified Certifications
                </h1>
                <br />
                <p>
                    Skill Certified has five IT certification series that test different knowledge standards – from entry-level to expert.
                </p>
                <br />
                <div class="certifications">
                    <table class="certs">
                        <tr>
                            <td>
                                <img src="images/sc1.png" alt="SCPU" class="cimage" /></td>
                            <td>
                                <p>Professional User Certification is for the people who want to get started in Network Security and want to become a professional user with basic understandings of functioning of Computer.</p>
                                <br />
                                <div class="more">
                                    <a href="SCPU.aspx">See More &nbsp></a>
                                </div>
                                <div class="buy">
                                    <a href="SCPU_buy.aspx">Buy Now</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/sc2.png" alt="SCNE" class="cimage" /></td>
                            <td>
                                <p>Network Expert certifies the essential skills needed to confidently design, configure, manage and troubleshoot any wired and wireless devices.</p>
                                <br />
                                <div class="more">
                                    <a href="SCNE.aspx">See More &nbsp></a>
                                </div>
                                <div class="buy">
                                    <a href="SCNE_buy.aspx">Buy Now</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/sc3.png" alt="SCPT" class="cimage" /></td>
                            <td>
                                <p>Penetration Tester cerification is for intermediate level cybersecurity professionals who are tasked with penetration testing to manage vulnerabilities on a network.</p>
                                <br />
                                <div class="more">
                                    <a href="SCPT.aspx">See More &nbsp></a>
                                </div>
                                <div class="buy">
                                    <a href="SCPT_buy.aspx">Buy Now</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/sc4.png" alt="SCLE" class="cimage" /></td>
                            <td>
                                <p>Linux Expert certification is an internationally recognized credential validating technical competencies required for junior-level Linux administrators.</p>
                                <br />
                                <div class="more">
                                    <a href="SCLE.aspx">See More &nbsp></a>
                                </div>
                                <div class="buy">
                                    <a href="SCLE_buy.aspx">Buy Now</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/sc5.png" alt="SCCE" class="cimage" /></td>
                            <td>
                                <p>Cloud Expert Certification course validates the skills and expertise required to securely implement, maintain and utilize cloud technologies with latest technologies.</p>
                                <br />
                                <div class="more">
                                    <a href="SCCE_buy.aspx">See More &nbsp></a>
                                </div>
                                <div class="buy">
                                    <a href="SCCE_buy.aspx">Buy Now</a>
                                </div>
                            </td>
                        </tr>
                    </table>
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
