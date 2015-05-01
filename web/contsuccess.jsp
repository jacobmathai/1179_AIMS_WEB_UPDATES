<%-- 
    Document   : contsuccess
    Created on : Apr 8, 2015, 12:30:47 PM
    Author     : Joji Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />
<%

            try {
                String name = request.getParameter("userName");
                String phno = request.getParameter("userPhone");
                String mid = request.getParameter("userEmail");
                String usermsg = request.getParameter("usermsg");
                int j = db.putData("insert into support(name,phone,email,query)  values('" + name + "','" + phno + "','" + mid + "','" + usermsg + "')");

                    if ( j > 0) {
                        response.sendRedirect("contact.jsp?msg=success");
                    } else {
                        response.sendRedirect("contact.jsp?msg=error");
                    }
               
            } catch (Exception e) {
                e.printStackTrace();
            }
%>