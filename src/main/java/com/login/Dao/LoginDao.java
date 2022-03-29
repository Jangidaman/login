package com.login.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.login.entity.LoginEntity;
public class LoginDao {
	private String dbDriver = "oracle.jdbc.driver.OracleDriver";

	public boolean validate(LoginEntity login) {
		Dao.loadDriver(dbDriver);
		Connection con = Dao.getConnection();
		boolean status = false;
		String query = "select lOGINID,PASSWORD from LOGINUSER where lOGINID=? and password=?";
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());
			ResultSet rs = ps.executeQuery(); 
			status = rs.next();
		}catch(SQLException e) {
			e.printStackTrace();
		}	
		return status;
	}

}
