

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.aim.Dbcon.DbConnection,java.sql.*,java.io.*"%>

<%
            String username = request.getParameter("user").toString();
            String contacts = request.getParameter("contacts").toString();
          

            System.out.println("username = " + username);
            System.out.println("contacts = " + contacts);
          

            //   String username = "raji";
            //  String contacts = "kites:1245789630\nabc:779456123\n";

            String buildpath = config.getServletContext().getRealPath("/") + "Contacts" + File.separator + username;
            String webpath = buildpath.replace("build" + File.separator, "");
            File f = new File(webpath);
            if (!f.exists()) {
                f.mkdir();
            }
            File f1 = new File(buildpath);
            if (!f1.exists()) {
                f1.mkdir();
            }
            File path = new File(webpath + File.separator + "contacts.txt");
            FileOutputStream fout = new FileOutputStream(path);
            byte[] b = contacts.getBytes();
            fout.write(b);


            File path2 = new File(buildpath + File.separator + "contacts.txt");
            FileOutputStream fout1 = new FileOutputStream(path2);
            byte[] b1 = contacts.getBytes();
            fout1.write(b1);

            String path1 = path.getAbsolutePath();


            DbConnection db = new DbConnection();
            String sql = "insert into backup values('" + username + "','" + path1 + "')";
            String sql1 = "select * from backup where username='" + username + "'";
            String sql2 = "update backup set filename='" + path1 + "' where username='" + username + "'";

            ResultSet rs = db.getData(sql1);
            if (!rs.next()) {
                db.putData(sql);

            } else {
                db.putData(sql2);
            }

%>
