<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SCNE_buy.aspx.cs" Inherits="SCPU_buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | SCPU</title>

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
            <div class="bodysection" style="height: 850px;">
                <br/>
                <h1 style="text-align:center; text-decoration:underline;">
                    SCNE Exam Details
                </h1>
                <br/>
                <div class="SCtable">
                    <table>
                        <tr>
                            <td>Exam Details 
                            </td>
                            <td>
                                <ul>
                                <li>
                                    Critical security concepts to helping networking professionals work with security practitioners
                                </li>
                                <li>
                                    Key cloud computing best practices and typical service models
                                </li>
                                <li>
                                    Coverage of newer hardware and virtualization techniques
                                </li>
                                <li>
                                    Concepts to give individuals the combination of skills to keep the network resilient
                                </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>Number of Questions	
                            </td>
                            <td>Maximum of 90 questions per exam
                            </td>
                        </tr>
                        <tr>
                            <td>Type of Questions
                            </td>
                            <td>Multiple Choice Questions (single and multiple response), drag and drops and performance-based
                            </td>
                        </tr>
                        <tr>
                            <td>Length of Test	
                            </td>
                            <td>90 Minutes
                            </td>
                        </tr>
                        <tr>
                            <td>Passing Score
                            </td>
                            <td>720 (on a scale of 100-900)
                            </td>
                        </tr>
                        <tr>
                            <td>Recommended Experience
                            </td>
                            <td>SCPU Certification and At least 9 to 12 months of networking experience
                            </td>
                        </tr>
                        <tr>
                            <td>Languages
                            </td>
                            <td>English,Hindi
                            </td>
                        </tr>
                        <tr>
                            <td>Expiration
                            </td>
                            <td>Usually three years after launch
                            </td>
                        </tr>
                        <tr>
                            <td>Price
                            </td>
                            <td>40000/-
                            </td>
                        </tr>
                    </table>
                </div>
                <br/>
                <div class="SCbuy">
                   <asp:Button ID="scbuy" runat="server" Text="Purchase" OnClick="scbuy_Click" />
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








