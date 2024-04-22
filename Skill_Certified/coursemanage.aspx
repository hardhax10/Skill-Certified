<%@ Page Language="C#" AutoEventWireup="true" CodeFile="coursemanage.aspx.cs" Inherits="courseedit" %>

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
                        <asp:Button ID="nav_logout" runat="server" Visible="false" />
                    </div>
                </div>

                <div class="logo">
                    <a href="../index.aspx">
                        <img src="../images/icon.png" /></a>
                </div>
                <div class="login">
                    <asp:Button ID="login" runat="server" />
                </div>
            </div>

            <div class="bodysection" style="height: 700px;">
                <div class="user_edit">
                    <div class="user">
                        Courses
                    </div>
                    <div class="course_search">
                        <table>
                            <tr>
                                <td colspan="2" class="td3">
                                    <center>
                                        <img src="images/course.png"/>
                                    </center>
                                </td>
                            </tr>
                            <tr>
                                <td class="td4">Course Id :</td>
                                <td class="td4">
                                    <asp:TextBox ID="course_id" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="td5">Course Name:</td>
                                <td class="td5">
                                    <asp:TextBox ID="course_name" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="td6" colspan="2">
                                    <center>
                                        <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" />
                                    </center>
                                </td>

                            </tr>
                        </table>
                    </div>
                    <div class="add_update">
                        <table>
                            <tr>
                                <td>Course ID :
                                </td>
                                <td>
                                    <asp:Label ID="courseid_show" CssClass="showdata" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="courseid_edit" runat="server" Width="75px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Course Name :
                                </td>
                                <td>
                                    <asp:Label ID="coursename_show" CssClass="showdata" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="coursename_edit" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Course Duration :
                                </td>
                                <td>
                                    <asp:Label ID="duration_show" runat="server" CssClass="showdata"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="duration_edit" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Course Fee :
                                </td>
                                <td>
                                    <asp:Label CssClass="showdata" ID="fee_show" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="fee_edit" CssClass="showdata" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Course Contents :
                                </td>
                            </tr>
                        </table>
                        <div class="addupdatebutton">
                            <br/>
                            <br/>
                            <asp:Button ID="add" runat="server" Text="Add" OnClick="add_Click"/>
                            <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click"/>
                            <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click"/>
                        </div>

                    </div>
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
