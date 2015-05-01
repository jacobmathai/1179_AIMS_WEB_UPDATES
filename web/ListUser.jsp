


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
    </head>
    <body>
        <div class="header">
            <div class="wrap">
                <div class="header_top">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png"></a>
                    </div>
                    <div class="menu">
                       <ul>

                            <li ><a href="AdminHome.jsp">Home</a></li>
                            <li class="active"><a href="UserManage.jsp">User Management</a></li>
                            <li><a href="ChangePwd.jsp"> Reset Password</a></li>
                            <li><a href="Logout.jsp">Logout</a></li>



                            <div class="clear"></div>
                        </ul>
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
                            <h2>Registered Users</h2>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="col span_2_of_3">
                                    <div class="services">



                <%
                            String name = "";
                            String phno = "";
                            String mid = "";
                            String bno = "";
                            String uid = request.getParameter("uid").trim();
                            ResultSet rs = db.getData("select * from user_reg where uid=" + uid + "");
                            try {
                                if (rs.next()) {
                                    name = rs.getString("name");
                                    phno = rs.getString("phone");
                                    mid = rs.getString("email");
                                    bno = rs.getString("backupphone");

                %>

                <table border="0" cellspacing="5" cellpadding="10" align="center" >
                    <tr>
                        <td><b>USER ID</b></td>
                        <td><%=uid%></td>
                    </tr>
                    <tr>
                        <td>
                            <b>NAME</b>
                        </td>
                        <td>
                            <%=name%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>PHONE NUMBER</b>
                        </td>
                        <td>
                            <%=phno%>
                        </td>
                    </tr>

                    <tr>
                        <td><b>EMAIL ID</b></td>
                        <td><%=mid%></td>
                    </tr>
                    <tr>
                        <td><b>BACKUP PHONE NUMBER</b></td>
                        <td><%=bno%></td>
                    </tr>
                    <%}
                                } catch (Exception e) {
                                    e.printStackTrace();
                        }%>

                </table>
                                    </div>
                                </div>
                                <div class="col span_1_of_3">

                                    <div class="latest_comments">
                                        <h3>Latest Comments</h3>
                                        <div class="comments">
                                            <p><span>admin</span> commented on</p>
                                            <h4><a href="#">Lorem ipsum dolor sit dolor more normal!</a></h4>
                                            <p>June 25th, 2013</p>
                                        </div>
                                        <div class="comments">
                                            <p><span>admin</span> commented on</p>
                                            <h4><a href="#">Lorem ipsum dolor sit dolor more normal!</a></h4>
                                            <p>June 20th, 2013</p>
                                        </div>
                                        <div class="comments">
                                            <p><span>admin</span> commented on</p>
                                            <h4><a href="#">Lorem ipsum dolor sit dolor more normal!</a></h4>
                                            <p>June 15th, 2013</p>
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
                    <p>College Of Engineering Kidangoor © All Rights Reseverd | Design by  <a href="index.jsp"></a></p>
                </div>
            </div>

        </div>

    </body>
</html>
