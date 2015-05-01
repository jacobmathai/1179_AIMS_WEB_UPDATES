<%-- 
    Document   : UsermanageAction
    Created on : 24 Jan, 2013, 1:05:52 PM
    Author     : vaio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />
<%
String user=request.getParameter("user");
String status=request.getParameter("status");
if(status.equalsIgnoreCase("delete"))
    {
    db.putData("delete from login where uid='"+user+"'");
        db.putData("delete from user_reg where uid='"+user+"'");
    }
else
    {
    db.putData("update login set status="+status+" where uid='"+user+"'" );

    }
    response.sendRedirect("UserManage.jsp");
    

%>