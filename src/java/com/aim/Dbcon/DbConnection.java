/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aim.Dbcon;

import java.sql.*;

/**
 *
 * @author vaio
 */
public class DbConnection {

    Connection con;
    Statement stmt;
     ResultSet rs ;

    public DbConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/aims", "root", "root");
            stmt = con.createStatement();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet getData(String Query) {
        System.out.println("Query = " + Query);
        try {
            rs = stmt.executeQuery(Query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;

    }

    public int putData(String Query) {
        System.out.println("Query = " + Query);
        int i = 0;
        try {
            i = stmt.executeUpdate(Query);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public void closeDbConnection() {
        try {
            con.close();

        } catch (Exception e) {
        }
    }
}



