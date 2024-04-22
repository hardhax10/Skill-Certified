<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

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
                    <span><a href="javascript:void(0)" class="closebtn" onclick="closeNav();ShowAndHide();SS">&times;</a></span>
                    <div class="user_section">
                        <asp:Image ID="userimage" runat="server" ImageUrl="images/user.png" />
                        <asp:Label ID="username" runat="server" Text="Sign In"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <hr />
                    <br />
                    <br />
                    <p>Main Menu</p>
                    <br />
                    <a href="index.aspx">Home</a>
                    <a href="certification.aspx">Certification</a>
                    <a href="exam.aspx">Examination</a>
                    <a href="about.aspx">About Us</a>
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

            <div class="bodysection" style="height: 900px;">
                <div class="pro_left">
                    <div class="pro_photo">
                        <asp:Image ID="profiles" runat="server" />
                    </div>

                    <div class="user_skills">


                        <div class="td1">
                            <br />

                            User Skills
                        </div>


                        <div class="td2">
                            <br />
                            <table>
                                <tr><td>Computer User</td></tr>
                                <tr><td>Excel</td></tr>
                                <tr><td>3</td></tr>
                                <tr><td>4</td></tr>
                                <tr><td>5</td></tr>
                            </table>
                        </div>


                    </div>
                </div>

                <div class="pro_edit">
                    <asp:Button ID="pro_edit" runat="server" Text="Edit" />
                </div>
                <div class="pro_name">

                    <br />
                    <asp:Label ID="pro_name" runat="server" Text="Full Name"></asp:Label>
                    <br />
                    <asp:Label ID="pro_about" runat="server" Text="Student"></asp:Label>
                </div>


                <div class="pro_details">
                    <table class="profile_table">
                        <tr>
                            <td class="pro_det_head">Name :
                            </td>
                            <td>
                                <asp:Label ID="pro_det_name" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="pro_det_head">User Name :
                            </td>
                            <td>
                                <asp:Label ID="pro_det_username" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="pro_det_head">Gender :
                            </td>
                            <td>
                                <asp:Label ID="pro_det_gender" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="pro_det_head">Age :
                            </td>
                            <td>
                                <asp:Label ID="pro_det_age" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="pro_det_head" style="border: none;">E-Mail :
                            </td>
                            <td style="border: none;">
                                <asp:Label ID="pro_det_mail" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>

                    </table>
                </div>
                <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
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

