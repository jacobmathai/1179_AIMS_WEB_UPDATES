
<%--
    Document   : features
    Created on : Jan 1, 2014, 10:24:10 AM
    Author     : VAISAKH_N
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
    <head>
        <title>Features</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
                <link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css"/>

        <script src="js/jquery-1.7.2.min.js" type="text/javascript">
        </script>
        <script src="js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
        </script>
        <script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
        </script>
        <script>
            jQuery(document).ready(function(){
                // binds form submission and fields to the validation engine
                jQuery("#formID").validationEngine();
            });
        </script>
    </head>
    <body>
        <div class="header">
            <div class="wrap">
                <div class="header_top">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png"></a>
                    </div>
                    <div class="menu">
                        <%
                        String utype = session.getAttribute("usertype").toString();
                        if (utype.equals("admin")) {
            %>

            <ul>
                <li><a href="AdminHome.jsp" title="Home Page" >Home</a></li>
                <li><a href="UserManage.jsp">User Management</a></li>
                <li class="active"><a href="ChangePwd.jsp" > Reset Password</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
                <div class="clear"></div>
            </ul>

            <%} else {%>

            <ul>
                <li><a href="UserHome.jsp">Home</a></li>
                <li><a href="mydevice.jsp">My Device</a></li>
                <li><a href="trackme.jsp">Track ME</a></li>
                <li><a href="backup.jsp">Back up</a></li>
                <li><a href="Download.jsp">Download</a></li>
                <li><a href="edit_profile.jsp">Edit Profile</a></li>
                <li class="active"><a href="ChangePwd.jsp" >Reset Password</a></li>
                <li><a href="Logout.jsp">LogOut</a></li>
                <div class="clear"></div>
            </ul>

            <%}%>


                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="content">

                <div class="header_wrapper">
                    <div class="wrap">
                        <div class="heading_line">
                            <h2>Change Your Password</h2>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="col span_2_of_3">
                                     <div class="contact-form">

                  <form action="ChangpAction.jsp" method="post" id="formID" class="formular">
                 

                        
                                <b>Current password</b>
                            
                                <input type="password" name="curpwd" id="pswrd" />
                         
                  
                                <b>New Password</b>
                            
                                <input type="password" name="newpwd" id="password"  class="validate[required] text-input"/>
                         
                      
                                <b>Confirm Password</b>
                            
                                <input type="password" name="conpwd" id="cpass" class="validate[required,equals[password]] text-input"/>
                          
                                <input type="submit" value=" Confirm  " class="button button-icon button-icon-download"/>
                           
                                <input type="reset" value="Reset" class="button button-icon button-icon-download"/>
                           

                    



                    
                      <%

                                    String msg = request.getParameter("error");
                                    if (msg != null) {
                                        if (msg.equals("success")) {

                        %>
                        <h3>Success</h3>
                        <%} else if (msg.equals("notmatches")) {
                        %>
                        <h3>Current password not matching</h3>
                        <%} else if (msg.equals("notequals")) {
                        %>
                        <h3>Passsword mismatching</h3>
                        <%                }
                                    }
                        %>
                </form>
                                    </div>
                                </div>
                                <div class="col span_1_of_3">

                                    <div class="latest_comments">
                                        <h3>Latest Comments</h3>
                                        <div class="comments">
                                            <p><span>Admin</span> commented on</p>
                                            <h4><a href="#">MoboCop is something which is different from </a></h4>
                                            <p>March 25th, 2015</p>
                                        </div>
                                        <div class="comments">
                                            <p><span>Admin</span> commented on</p>
                                            <h4><a href="#">The User-interface must be improved</a></h4>
                                            <p>March 20th, 2015</p>
                                        </div>
                                        <div class="comments">
                                            <p><span>Admin</span> commented on</p>
                                            <h4><a href="#">All features works good.Thanks to Autocop Security</a></h4>
                                            <p>March 15th, 2015</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="wrap">

                <div class="copy_right">
                       <p> <font color="verdana"> MoboCop Security 2015 © All Rights Reseverd | Design by AutoCop Security Solutions  <a href="index.jsp"></a></p>
               </div>
            </div>

        </div>

    </body>
</html>













