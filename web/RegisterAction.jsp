<%-- 
    Document   : RegisterAction
    Created on : 25 Jan, 2013, 11:06:49 AM
    Author     : vaio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />
<%

            try {
                String name = request.getParameter("name");
                String pswrd = request.getParameter("pswrd");
                String phno = request.getParameter("phno");
                String mid = request.getParameter("mid");
                String uname = request.getParameter("uname");
                String cpswrd = request.getParameter("cpswrd");
                String bno = request.getParameter("bno");
                if (pswrd.equals(cpswrd)) {
                    int i = db.putData("insert into login (username,password,usertype,status) values('" + uname + "','" + pswrd + "','user','0')");
                    int j = db.putData("insert into user_reg(name,phone,email,backupphone,username)  values('" + name + "','" + phno + "','" + mid + "','" + bno + "','" + uname + "')");

                    if (i > 0 && j > 0) {
                        response.sendRedirect("Register.jsp?msg=success");
                    } else {
                        response.sendRedirect("Register.jsp?msg=error");
                    }
                } else {
                    response.sendRedirect("Register.jsp?msg=pwd");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
%>