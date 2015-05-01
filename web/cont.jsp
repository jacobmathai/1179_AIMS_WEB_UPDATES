<%--
    Document   : contact
    Created on : APRIL, 2015, 10:25:10 AM
    Author     : JOJI MICHAEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Contact Us</title>
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
                            <h2>Registration Form</h2>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="col span_2_of_3">
                                    <div class="contact-form">
                                        <form id="formID" class="formular" action="contsuccess.jsp" method="post" name="FrmRegister1">
                                            <label>Name</label><br class="spacer" />
                                            <input type="text" name="name" value="" class="validate[required,custom[onlyLetterSp]] text-input"/><br class="spacer" />
                                            <label>Phone Number</label><br class="spacer" />
                                            <input type="text" name="phno" value="" maxlength="10" class="validate[required] text-input"/><br class="spacer" />
                                            <label>Email</label><br class="spacer" />
                                            <input type="text" name="mid" value="" class="validate[required,custom[email]] text-input"/><br class="spacer" />
                                            <label>Subject</label></span>
                                            <span><textarea name="usermsg" class="validate[required] text-input"> </textarea></span>
                                            </div>
                                            <input name="" type="submit"  title="Submit" class="button button-icon button-icon-download"  />
                                            <input name="" type="reset"  title="Submit" class="button button-icon button-icon-download" />

                                             <%
                                                        String str = request.getParameter("msg");
                                                        if (str != null) {
                                                            if (str.equals("error")) {
                                            %>
                                            Registration failed due to internal problem
                                            <% } else if (str.equals("success")) {
                                            %>
                                            Query Submitted successfully
                                            </form>
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










































