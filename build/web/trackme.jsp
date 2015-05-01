



<%--
    Document   : features
    Created on : Jan 1, 2014, 10:24:10 AM
    Author     : VAISAKH_N
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.utils.GoogleMapUtil,com.utils.RouteParserExample"%>
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
                <li class="active"><a href="trackme.jsp">Track ME</a></li>
                <li><a href="backup.jsp">Back up</a></li>
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
                            <h2>Track your Smartphone</h2>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="col span_2_of_3">
                                     <div class="contact-form">

                <%! String lat, lon;%>
                <%



                            String sql = "select * from gps where username='" + user + "'";
                            ResultSet rs = db.getData(sql);
                            while (rs.next()) {



                                lat = rs.getString("lattitude");
                                lon = rs.getString("longitude");
                            }




                            String line = lat + "," + lon + "|";

                            //     String line = "";
                            //     ArrayList list = dbp.getLatLonData(sid, "area_map");
                            //      for (int i = 0; i < list.size(); i++) {
                            //         line += list.get(i);
                            //     }
                            line = line.substring(0, line.lastIndexOf("|"));
                            String url = "http://maps.google.com/maps/api/staticmap?&path=color:0x0000FF80|weight:5|" + line + "&zoom=16&markers=" + line + "&maptype=hybrid&size=1000x1000&sensor=false";
                            System.out.println("url = " + url);
                            RouteParserExample.plotRout(lat, lon);
                            String place = RouteParserExample.parse();
                            String[] pl = place.split(" ");
                            System.out.println("place:" + place);
                %>
                <h2>Google Map View</h2>
                <textarea readonly><%=place%></textarea><br class="spacer" /><br class="spacer" />
                <img src="<%=url%>" alt="Cannot desplay Image"/>
                <a href="trackpath.jsp"><h3>To Track Complete Path....Click Here</h3></a>


            </div>
                                    </div>
                                </div>
                                <div class="col span_1_of_3">

                                    
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









































