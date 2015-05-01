<%@page import="java.io.*,java.util.*"%>
<%
            try {
                String boundary = "";
                String sz = "";
                String fname = "";
                Enumeration enum1 = request.getHeaderNames();
                while (enum1.hasMoreElements()) {
                    String header = (String) enum1.nextElement();
                    String hvalue = request.getHeader(header);
                    if ("content-length".equalsIgnoreCase(header)) {
                        sz = "" + hvalue;
                    }
                    if ("content-type".equalsIgnoreCase(header)) {
                        int idx = hvalue.lastIndexOf("boundary=");
                        if (idx != -1) {
                            boundary = hvalue.substring(idx + 9, hvalue.length());
                        }
                    }
                }
                ServletInputStream sv = request.getInputStream();
                int ch = 0;
                String val = "";
                while ((ch = sv.read()) != -1) {
                    val += (char) ch;
                    if (val.indexOf("Content-Type: ") >= 0) {
                        String tp = "Content-Type: ";
                        fname = val.substring(val.indexOf("filename=") + "filename=".length(), val.indexOf(tp));
                        fname = fname.replace('"', ' ');
                        fname = fname.trim();
                        int j = fname.lastIndexOf("/") + 1;
                        fname = fname.substring(j);
                        String ext = fname.substring(fname.lastIndexOf(".") + 1, fname.length());
                        if (ext.equalsIgnoreCase("jpg") || ext.equalsIgnoreCase("zip") || ext.equalsIgnoreCase("rar")||ext.equalsIgnoreCase("apk")) {
                            while ((ch = sv.read()) != '\n');
                            byte[] b = new byte[Integer.parseInt(sz)];
                            int cntr = 0;
                            while (cntr < b.length) {
                                b[cntr] = (byte) sv.read();
                                cntr++;
                            }
                            String str = new String(b);
                            int pos = str.indexOf(boundary) - 2;
                            pos = b.length;
                            File f = new File(config.getServletContext().getRealPath("/"));
                            if (!f.exists()) {
                                f.mkdirs();
                            }
                            String fpth = config.getServletContext().getRealPath("/") + "ClientTool"+File.separator+"";
                            fpth = fpth + fname;
                            java.io.FileOutputStream fout = new java.io.FileOutputStream(fpth);
                            fout.write(b, 2, pos - 4);
                            fout.close();
                            String SrcPath = config.getServletContext().getRealPath("/");
                            SrcPath = SrcPath.substring(0, SrcPath.lastIndexOf(File.separator+"build"+File.separator+"web"+File.separator));
                            SrcPath += File.separator+"web"+File.separator+"ClientTool"+File.separator;
                            SrcPath = SrcPath + fname;
                            java.io.FileOutputStream foutX = new java.io.FileOutputStream(SrcPath);
                            foutX.write(b, 2, pos - 4);
                            foutX.close();
                            response.sendRedirect("AdminHome.jsp?var=done");
                        } else {
                            response.sendRedirect("AdminHome.jsp?var=err");
                        }
                    }
                }
            } catch (Exception e) {
                out.print("Admin Upload Exception ::: " + e);
            }

%>

</html>
