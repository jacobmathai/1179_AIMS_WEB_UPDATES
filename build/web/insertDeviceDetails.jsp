

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.aim.Dbcon.DbConnection,java.sql.*"%>

<%
            String username = request.getParameter("user").toString();

            String imei = request.getParameter("imei").toString();
            String simser = request.getParameter("simser").toString();
            String versionno = request.getParameter("version").toString();
            String versionname = request.getParameter("versionname").toString();


            DbConnection db = new DbConnection();
            ResultSet rs = db.getData("select * from device_details where username='" + username + "' and imei='" + imei + "' and version='" + versionno + "' and version_name='" + versionname + "'");
            if (!rs.next()) {
                //db.putData("delete from device_details where username='"+username+"'");
                db.putData("insert into device_details values('" + username + "','" + imei + "','" + versionno + "','" + versionname + "','" + simser + "')");
                out.println("inserted");
            }else{
                db.putData("update device_details set imei='" + imei + "',version='" + versionno + "', version_name='" + versionname + "' where username='" + username + "'");
                 out.println("exist");
                }

%>
