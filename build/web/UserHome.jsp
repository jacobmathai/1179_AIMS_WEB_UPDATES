
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />
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
         <script type="text/javascript">
function validate()
{
if(document.FrmUpload.file.value=="")
{
alert("No File Choosen...");
return false;
}
else
{
return true;
}
}
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
                               <li class="active"><a href="UserHome.jsp" class="hover">Home</a></li>
                <li><a href="mydevice.jsp">My Device</a></li>
                <li><a href="trackme.jsp">Track ME</a></li>
                <li><a href="backup.jsp">Back up</a></li>
                <li><a href="Download.jsp">Download</a></li>
                <li><a href="edit_profile.jsp">Edit Profile</a></li>
                <li><a href="ChangePwd.jsp">Reset Password</a></li>
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
                <div class="wrap">
                    <div class="content_top">
                        <div class="content_top-left">

                        </div>
                        <div class="apps_desc">
                            <h1><span>An AntiTheft For Smartphone</span></h1>
                            <h1>Forget affraiding about loosing your smartphone!..</h1>
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
                                        
            <br/>
         
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







































