


<%@page contentType="text/html" pageEncoding="UTF-8"import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />

<%
            String name = request.getParameter("nam");
            String phon = request.getParameter("ph");
            String backphno = request.getParameter("bp");

            int i = db.putData("update user_reg set phone='" + phon + "',backupphone='" + backphno + "' where name='" + name + "'");
            if (i > 0) {

                response.sendRedirect("edit_profile.jsp?f=1");
            } else {
                response.sendRedirect("edit_profile.jsp?f=2");
            }

%>