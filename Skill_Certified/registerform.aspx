<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerform.aspx.cs" Inherits="registerform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Certified | Register</title>
    <link href="Stylesheet/register/registerstyle.css" rel="stylesheet" />
    <link href="Stylesheet/StyleSheet.css" rel="stylesheet" />
    <script src="JScript/JavaScript.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>
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
                        <img src="images/icon.png" /></a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" Visible="false" />
                </div>
            </div>
            <div class="bodysection" style="height: 1000px;">
                <div class="loginbox">
                    <img src="images/register/human_icon.jpg" alt="Alternate text" class="use" />
                    <h2>Registration Form</h2>
                    <br />
                    <table class="register">
                        <tr>
                            <td>
                                <asp:Label Text="First Name" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox runat="server" ID="f_name" CssClass="fieldvalue" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="fname" runat="server" ControlToValidate="f_name" ErrorMessage="Enter your First Name"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Last Name" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox runat="server" ID="l_name" CssClass="fieldvalue" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="lname" runat="server" ControlToValidate="l_name" ErrorMessage="Enter your last Name"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Gender" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:DropDownList ID="gender" runat="server" CssClass="fieldvalue" ForeColor="#1d1d1d">
                                    <asp:ListItem>Select your Gender</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Date Of Birth" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox ID="TxtDob" runat="server" TextMode="Date" CssClass="fieldvalue" ForeColor="#1d1d1d" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="dob_validate1" ControlToValidate="TxtDob" runat="server" ErrorMessage="Select your Birthdate"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Email" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox ID="email" runat="server" CssClass="fieldvalue" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="emailvalidate1" ControlToValidate="email" runat="server" ErrorMessage="Enter your Email Address"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="emailvalidate2" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Username" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox runat="server" ID="reg_username" CssClass="fieldvalue" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="username_validator" runat="server" ErrorMessage="Please enter username" ControlToValidate="reg_username"></asp:RequiredFieldValidator>
                                <asp:Label runat="server" ID="username_validate2"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Enter Password" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox runat="server" ID="password1" CssClass="fieldvalue" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="password1_validate" runat="server" ErrorMessage="Enter the Password" ControlToValidate="password1"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Re-Enter Password" CssClass="fieldname" runat="server" />
                            </td>
                            <td class="register1">
                                <asp:TextBox runat="server" ID="password2" CssClass="fieldvalue" />
                            </td>
                            <td >
                                <asp:RequiredFieldValidator ID="password2_validate" runat="server" ControlToValidate="password2" ErrorMessage="Confirm your Password"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="password2_validate2" runat="server" ControlToCompare="password1" ControlToValidate="password2" ErrorMessage="Password does not match"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>

                            <td style="align-content: flex-end;">
                                <asp:Button Text="Submit" CssClass="btnsubmit" runat="server" OnClick="Unnamed9_Click" />
                            </td>
                            <td>
                                <asp:LinkButton Text="Already a user Sign In" CssClass="btnforget" runat="server" OnClick="Unnamed10_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align:center" class="auto-style1">
                                <asp:Label ID="submit_result" runat="server" Visible="false" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
