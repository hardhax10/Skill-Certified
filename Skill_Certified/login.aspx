<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | Login</title>
    <link href="Stylesheet/Register/loginStyle.css" rel="stylesheet" />
    <link href="Stylesheet/StyleSheet.css" rel="stylesheet" />
    <script src="JScript/JavaScript.js"></script>
</head>
<body>
    <form runat="server">
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
                        <img src="images/icon.png" />
                    </a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" Visible="False" />
                </div>
                </div>
        <div class="bodysection" style="height:1000px;">
   <div class="loginbox">
       <img src="images/register/human_icon.jpg" alt="Alternate text" class="use"/>
       <h2>Log In Here</h2>
       <br/><br/>
      
           <asp:Label Text="Username : " CssClass="lblname" runat="server" />
           <asp:TextBox runat="server" CssClass="txt" placeholder="Enter username" ID="login_username"/><br/><br/>
           <asp:Label Text="Password : " CssClass="lblpass" runat="server" textmode="password"/>
           <asp:Textbox runat="server" CssClass="txt" placeholder="*********" ID="login_password"/><br/><br/><br/>
           <asp:Button text="Sign In" CssClass="login_btn" runat="server" OnClick="Unnamed3_Click"/>
           <asp:linkButton text="Forgot Password" CssClass="btnforget" runat="server"/>
       <br/><br/>
           <asp:Label ID="incorrect" runat="server" Text="Incorrect username or password" Visible="false"></asp:Label>
          
       </div>
        </div>
        </div>
    </form>
</body> 
</html>
