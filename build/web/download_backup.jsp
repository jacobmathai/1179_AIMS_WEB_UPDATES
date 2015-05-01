<%@page import="com.mysql.jdbc.DatabaseMetaData"%>
<%@page import="java.util.Calendar"%>
<%@ page import="java.io.*"%>
<%


            String name = "contacts.txt";
            String user = request.getParameter("username").toString();
            String url = config.getServletContext().getRealPath("/") + "Contacts" + File.separator + user + File.separator + name;
            String type = name.substring(name.indexOf(".") + 1, name.length());
            File F = new File(url);
            if (F.exists()) {
                response.setHeader("Content-Disposition", "attachment;filename=" + name);
                response.setHeader("Content-type", "plain/" + type);
                ServletOutputStream sos = response.getOutputStream();
                FileInputStream fin = new FileInputStream(url);
                byte b[] = new byte[fin.available()];
                fin.read(b, 0, b.length);
                sos.write(b);
                sos.flush();
                sos.close();


            } else {
                response.sendRedirect("backup.jsp?file=notfound");
            }
%>