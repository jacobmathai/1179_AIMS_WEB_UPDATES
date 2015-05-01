<%-- 
    Document   : contact
    Created on : Jan 1, 2014, 10:25:10 AM
    Author     : VAISAKH_N
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>About Us</title>
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
                        <ul>

                            <li class="active"><a href="index.jsp" title="Home Page" class="hover">Home</a></li>
                            <li><a href="features.jsp">What is Mob?</a></li>
                            <li><a href="Register.jsp" title="Partners">Register</a></li>
                            <li><a href="contact.jsp">Support</a></li>
                            <li><a href=".jsp">About Us</a></li>
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
                            <h2>Contact Us</h2>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="col span_2_of_3">
                                    <div class="contact-form">
                                        <form id="formID" class="formular" method="post" action="contsuccess.jsp">
                                            <div>
                                                <span><label>Name</label></span>
                                                <span><input name="userName" type="text"  class="validate[required,custom[onlyLetterSp]] text-input" ></span>
                                            </div>
                                            <div>
                                                <span><label>E-mail</label></span>
                                                <span><input name="userEmail" type="text"  class="validate[required,custom[email]] text-input"></span>
                                            </div>
                                            <div>
                                                <span><label>Phone Number</label></span>
                                                <span><input name="userPhone" type="text"  ></span>
                                            </div>
                                            <div>
                                                <span><label>Subject</label></span>
                                                <span><textarea name="usermsg" class="validate[required] text-input"> </textarea></span>
                                            </div>
                                            <div>
                                                <span><input type="submit" value="Submit"  class="button button-icon button-icon-download"></span>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col span_1_of_3">
                                    <div class="contact_info">
                                        <h3>Find Us Here</h3>
                                       
                                    </div>
                                    <div class="company_address">
                                        <h3>  <font color="verdana"> Company Information</h3>
                                        <p>  <font color="verdana"> AutoCop Security Solutions</p>
                                        <p>  <font color="verdana"> Remote Location,SkyThinkers </p>
                                        <p>  <font color="verdana"> Space , 555123</p></font>

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

