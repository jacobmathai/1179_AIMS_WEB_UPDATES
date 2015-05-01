

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.aim.Dbcon.DbConnection,java.sql.ResultSet"%>


<%
String user=request.getParameter("user");
String lattitude=request.getParameter("lattitude");
String longitude=request.getParameter("longitude");

DbConnection db=new DbConnection();

int i =db.putData("insert into gps values('"+user+"','"+lattitude+"','"+longitude+"')");


%>