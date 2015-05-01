

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.aim.Dbcon.DbConnection,java.sql.ResultSet"%>
<%
            ResultSet rs1;
            String user = request.getParameter("user").toString();
            String pass = request.getParameter("pass").toString();
            DbConnection db = new DbConnection();
            String sql = "select * from login where username='" + user + "' and password='" + pass + "'";
            String ssql1 = "select * from user_reg where username='" + user + "'";
          
            ResultSet rs = db.getData(sql);
            if (rs.next()) {
                
                rs1 = db.getData(ssql1);
                if (rs1.next()) {
                  String phone=rs1.getString("backupphone");
                  String email=rs1.getString("email");
                    out.println(phone+","+email);
                }
            } else {
                out.println("invalid");
            }

%>