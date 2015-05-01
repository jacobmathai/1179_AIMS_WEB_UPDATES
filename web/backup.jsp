



<%--
    Document   : features
    Created on : Jan 1, 2014, 10:24:10 AM
    Author     : VAISAKH_N
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.File;"%>
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
        <title>Backup</title>
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
                 <%
                    String user = session.getAttribute("uname").toString();

        %>
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
                <li><a href="UserHome.jsp">Home</a></li>
                <li ><a href="mydevice.jsp">My Device</a></li>
                <li><a href="trackme.jsp">Track ME</a></li>
                <li class="active"><a href="backup.jsp">Back up</a></li>
                <li><a href="Download.jsp">Download</a></li>
                <li ><a href="edit_profile.jsp">Edit Profile</a></li>
                <li ><a href="ChangePwd.jsp" >Reset Password</a></li>
                <li><a href="Logout.jsp">LogOut</a></li>
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
                            <h2>Back up of your Contact</h2>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="col span_2_of_3">
                                     <div class="contact-form">

           <div class="left">
                <h2><span>Welcome</span> <%=user%></h2><br class="spacer" />
                <br class="spacer" /><br class="spacer" />
                <br>
                <%

                            String filepath = "";
                            String filename = "";
                            String sql = "select * from backup where username='" + user + "'";
                            ResultSet rs = db.getData(sql);
                            if (rs.next()) {
                                filepath = rs.getString("filename");


                                //  String buildpath = config.getServletContext().getRealPath("/") + "Contacts" + File.separator + user + "contacts.txt";
                                //    String webpath = buildpath.replace("build" + File.separator, "");
                                File f = new File(filepath);

                                filename = f.getName();
                                System.out.println(filename);



                %>

                <h3>Click here to download the backup of ur contacts..!<br>
                    <a href="download_backup.jsp?username=<%=user%>"><%=filename%></a></h3>

                <%
                                            } else {

                %>
                <p style="font-weight:bold;color:brown;">
                    Sorry....No back up has been made yet...
                </p>

                <%                            }
                %>
                <br>
                <br>
                <br>
                <br>
                <p style="font-weight:bold;color:brown;">
                    <%
                                String CheckLogin = request.getParameter("file");
                                if (CheckLogin != null) {
                                    if (CheckLogin.equalsIgnoreCase("notfound")) {
                                        out.println("404 : File Not Found : AIMS Client Tool is Under Maintenance : Please try After Sometime...");
                                    } else {
                                        out.println("");
                                    }
                                }
                    %>
                </p>

            </div>                            </div>
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


































