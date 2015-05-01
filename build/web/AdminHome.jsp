
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

                            <li class="active"><a href="AdminHome.jsp">Home</a></li>
                            <li><a href="UserManage.jsp">User Management</a></li>
                            <li><a href="ChangePwd.jsp"> Reset Password</a></li>
                            <li><a href="Logout.jsp">Logout</a></li>
                            <li><a href="Usersupport.jsp">User Support</a></li>



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
                            <p style="color: red">Coming Soon for...</p>
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
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                    <div class="demo download">
                                         <form action="Upload.jsp" method="post" enctype="multipart/form-data" name="FrmUpload" >
                <br/>
                
               
                <input type="file" name="file" id="f1" style="display: none"/>
                
               
                <input type="button" name="Browse" value="Browse" onclick="document.getElementById('f1').click();" class="button button-icon button-icon-download"/>
                <input type="submit"  value="Upload App" onclick="return validate();" class="button button-icon button-icon-download"/>


                                         </form>
            <br/>
            <p style="font-weight:bold;color:brown;">
                <strong>
                    <%
                                String CheckLogin = request.getParameter("var");
                                if (CheckLogin != null) {
                                    if (CheckLogin.equalsIgnoreCase("done")) {
                                        out.println("File Uploaded Successfully...");
                                    } else if (CheckLogin.equalsIgnoreCase("err")) {
                                        out.println("File Upload Failed. Not a Valid AIMS Client Tool...");
                                    } else {
                                        out.println("");
                                    }
                                }
                    %>
                </strong>
                                        
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
                    <p>KMM college of arts and science © All Rights Reseverd | Design by  <a href="index.jsp"></a></p>
                </div>
            </div>
        </div>
    </body>
</html>

























