<%-- 
    Document   : login_action
    Created on : Feb 1, 2013, 4:45:40 PM
    Author     : jithesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.aim.Dbcon.DbConnection,java.sql.ResultSet"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
            try {
                String uname = request.getParameter("uname");
                String pwd = request.getParameter("upass");
                String usertype = "";
                String status = "";
                DbConnection db = new DbConnection();
                ResultSet rs = db.getData("select * from login where username='" + uname + "' and password='" + pwd + "'");
                if (rs.next()) {
                    status = rs.getString("status");
                    usertype = rs.getString("usertype");
                    session.setAttribute("uname", uname);
                    session.setAttribute("usertype", usertype);
                    if (status.equals("1")) {
                        if (usertype.equals("admin")) {
                            response.sendRedirect("AdminHome.jsp");
                        } else {
                            response.sendRedirect("UserHome.jsp");
                        }
                    } else {
                        response.sendRedirect("index.jsp?msg=blocked");
                    }
                } else {
                    response.sendRedirect("index.jsp?msg=error");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

%>
