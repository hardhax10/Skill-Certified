<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | Contact Us</title>
        <link href="Stylesheet/StyleSheet.css" rel="stylesheet" />
        <script src="JScript/JavaScript.js"></script>
</head>
<body>
    
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
            <div class="bodysection" style="height:800px;">
                <h1 style="text-align:center;">Contact Form</h1><br/>
                <form action="/action_page.php">
                    <label for="fname">First Name</label>
                    <input type="text" id="fname" name="firstname" placeholder="Your name.."/>
                    <br/>
                    <label for="lname">Last Name</label>
                    <input type="text" id="lname" name="lastname" placeholder="Your last name.."/>
                    <br/>
                    <label for="country">Country</label>
                    <select id="country" name="country">
                        <option value="australia">Australia</option>
                        <option value="canada">Canada</option>
                        <option value="usa">USA</option>
                    </select>
                    <br/>
                    <label for="subject">Subject</label>
                    <textarea id="subject" name="subject" placeholder="Write something.." style="height: 200px"></textarea>
                    <br/>
                    <input id="contact" type="submit" value="Submit"/>
                </form>
            </div>




            <div class="footer">
                <div class="footer-donate">
                    <img src="images/icon.png" /><br/><br/><br/>
                    <a href="donateus.aspx">DONATE US</a>
                </div>
               <div class="footer_quick">
                    <br/>
                    <span>QUICK LINKS</span>
                    <br/><br/>
                    <a href="index.aspx">Home</a>
                    <br/><br/>
                    <a href="certification.aspx">Certifications</a>
                    <br/><br/>
                    <a href="about.aspx">About Us</a>
                    <br/><br/>
                    <a href="contact.aspx">Contact Us</a>

                </div>
                <div class="footer_social">
                        <br/><br/>
                        <a class="facebook" href="#"><i class="fa fa-facebook">facebook</i></a><br/><br/>
                        <a class="twitter" href="#"><i class="fa fa-twitter">twitter</i></a><br/><br/>
                        <a class="linkedin" href="#"><i class="fa fa-linkedin">linked in</i></a><br/><br/>
                </div>
                <div class="footer_copyright">
                    Copyright &copy; 2021 Skill Certified
                </div>
            </div>
            </div>
    
</body>
</html>
