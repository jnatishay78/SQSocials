/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.*;

/**
 *
 * @author ASUS
 */
public class connectionPool {

    static Connection conn = null;

    public static Connection connectDB() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sqbase", "root", "aryan06");
            System.out.println("Connection Success");

        } catch (Exception e) {
            System.out.println("Connection Fail");
        }
        return conn;

    }
    public static void main(String[] args) {
        connectDB();
    }
}
