package com.csw.test;

import java.sql.Connection;
import java.sql.DriverManager;

public class TestConn {
    public static void main(String[] args) throws Exception {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
        System.out.println(conn);
    }
}
