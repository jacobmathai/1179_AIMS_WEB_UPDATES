

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.aim.Dbcon.DbConnection,java.sql.*"%>

<%
            String username = request.getParameter("user").toString();
        
         
            DbConnection db = new DbConnection();
            ResultSet rs = db.getData("select * from device_details where username='" + username + "'");
            if (rs.next()) {
               out.println(rs.getString("sim_serial"));
            }

%>
