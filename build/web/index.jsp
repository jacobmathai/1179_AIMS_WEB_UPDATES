
<!DOCTYPE HTML>
<html>
    <head>
        <title>Home</title>
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



                            <div class="clear"></div>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="content">
                <div class="wrap">
                    <div class="content_top">
                        <div class="content_top-left">

                        </div>
                        <div class="apps_desc">
                            <h1><span>MoboCop Mobile Security</span></h1>
                            <h1>An AntiTheft For Smartphone</h1>
                            <div class="download">
                                <a href="#" onclick="alert('This link is under construction')"><img src="images/google-play.png"></a>
                            </div>

                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="wrap">

                        <div class="available_apps">
                            <p style="color: blueviolet">Coming Soon for...</p>
                            <ul style="margin-top: 10px">

                                <li><img src="images/apple-icon.png"><p>Ios</p></li>
                                <li><img src="images/blackberry-icon.png"><p>Blackberry</p></li>
                                <li><img src="images/windows-icon.png"><p>Windows</p></li>
                                <li><img src="images/nokia.png"><p>Nokia</p></li>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="content_bottom">
                            <div class="section group">
                                <div class="cont span_2_of_3">
                                    <h2>How it Works</h2>
                                    <p>MoboCop is a safe app to install on all compatible phone models. It has been tested and proven its reliability of safely working on mobile devices. Watch tutorial at YouTube on Download & Installation instructions.</p>
                                    <p>Purchase MoboCop app for one time and install on your mobile phone for lifetime protection. There'll be no monthly or yearly subscription! Hassle free download, directly download Mobocop app to your mobile phone. Easy installation and settings with video guides available.</p>
                                    <div class="demo download">
                                        <a href="#" class="button button-icon button-icon-download">Download Now</a>
                                    </div>
                                    <div class="section group">
                                        <div class="col_1_of_3 features">
                                            <div class="img-heading">
                                                <div class="service-img">
                                                    <img src="images/service-icon-1.png" alt="">
                                                </div>
                                                <div class="heading">
                                                    <h4>Android version</h4>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                            <p> <div style="text-align: justify;"> Android powers hundreds of millions of mobile devices in more than 190 countries around the world. It's the largest installed base of any mobile platform and growing fast every day another million users power up their Android devices for the first time and start looking for apps, games, and other digital content. </p> </div>
                                        </div>
                                        <div class="col_1_of_3 features">
                                            <div class="img-heading">
                                                <div class="service-img">
                                                    <img src="images/service-icon-3.png" alt="">
                                                </div>
                                                <div class="heading">
                                                    <h4>User Friendly Design</h4>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                            <p> <div style="text-align: justify;"> In the user-centered design paradigm, the product is designed with its intended users in mind at all times. In the user-driven or participatory design paradigm, some of the users become actual or de facto members of the design team.</p>
                                            </div>    </div>
                                        <div class="col_1_of_3 features">
                                            <div class="img-heading">
                                                <div class="service-img">
                                                    <img src="images/service-icon-4.png" alt="">
                                                </div>
                                                <div class="heading">
                                                    <h4>World Class Support</h4>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                            <p> <div style="text-align: justify;"> Need Help? Our support team wins rave reviews and is always available at support@mobocop.com</p>
                                            </div>  </div>
                                    </div>
                                </div>
                                <div class="rsidebar sidebar">
                                    <h3>Login to Aims</h3>
                                    <div class="phone_apps">
                                        <form id="formID" class="formular"  action="login_action.jsp" method="post">

                                            <label>UserName</label><br class="spacer" />
                                            <input name="uname" type="text" id="uname" style="width: 200px" class="validate[required] text-input" /><br class="spacer" />
                                            <label>Password</label><br class="spacer" />
                                            <input name="upass" type="password" id="upass"  style="width: 200px" class="validate[required] text-input" /><br class="spacer" />
                                            <br class="spacer" />
                                            <input name="" type="submit" class="button button-icon button-icon-download" title="Login" style="height:40px" />
                                            <br>   <%
                                                        String str = request.getParameter("msg");
                                                        if (str != null) {
                                                            if (str.equals("error")) {
                                            %>
                                            <font style="color: red"> Invalid UserName or Password....</font>
                                            <% } else {
                                            %>
                                           <font style="color: red"> User Blocked By Administrator...</font>
                                            <%  }
                                                        }
                                            %></form>
                                    </div>
                                    <div class="popular-post">
                                        <h3>Popular Reviews</h3>
                                        <div class="post-grid">
                                            <img src="images/post-img1.jpg" title="post1" alt="" />
                                            <p>MoboCop is something which is different from any other security App.<a href="#">[...]</a></p>
                                            <div class="clear"> </div>
                                        </div>
                                        <div class="post-grid">
                                            <img src="images/post-img2.jpg" title="post1" alt="" />
                                            <p>The User-interface must be improved<a href="#">[...]</a></p>
                                            <div class="clear"> </div>
                                        </div>
                                        <div class="post-grid">
                                            <img src="images/post-img3.jpg" title="post1" alt="" />
                                            <p>All features works good.Thanks to Autocop Security for this wonderful <a href="#">[...]</a></p>
                                            <div class="clear"> </div>
                                        </div>
                                        <div class="post-grid">
                                            <img src="images/post-img4.jpg" title="post1" alt="" />
                                            <p>Lorem ipsum dolor sit dolor more normal consectetur of letters sit amet,<a href="#">[...]</a></p>
                                            <div class="clear"> </div>
                                        </div>
                                        <div class="view-all"><a href="#">
                                            </a><a href="#">ViewAll</a>
                                        </div>
                                        <div class="clear"></div>
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

