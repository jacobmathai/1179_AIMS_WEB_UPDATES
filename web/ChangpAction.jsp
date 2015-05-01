<%-- 
    Document   : Changp
    Created on : 25 Jan, 2013, 1:21:22 PM
    Author     : vaio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" scope="page" class="com.aim.Dbcon.DbConnection" />
<%
            try {
                String uname = session.getAttribute("uname").toString();
                String curpwd = request.getParameter("curpwd");
                String newpwd = request.getParameter("newpwd");
                String conpwd = request.getParameter("conpwd");

                String qry = "update login set password='" + newpwd + "' where username='" + uname + "' and password='" + curpwd + "'";

                if (newpwd.equals(conpwd)) {

                    int i = db.putData(qry);
                    if (i > 0) {
                        String utype = session.getAttribute("usertype").toString();
                        if (utype.equals("admin")) {
                            response.sendRedirect("ChangePwd.jsp?error=success");
                        } else {
                            response.sendRedirect("ChangePwd.jsp?error=success");
                        }
                    } else {
                        response.sendRedirect("ChangePwd.jsp?error=notmatches");
                    }
                } else {
                    response.sendRedirect("ChangePwd.jsp?error=notequals");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

%>

