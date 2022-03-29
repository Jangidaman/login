package com.login.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao {
	private static String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String dbUname = "c##_jangid";
	private static String dbPass = "jangid123";
//	private static String dbDriver = "oracle.jdbc.driver.OracleDriver";
	public static void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbURL,dbUname,dbPass);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}	

}
