package com.login.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.login.entity.CreateUserEntity;
import com.login.entity.LoginEntity;

public class CreateUserDao {
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

	public boolean validate(CreateUserEntity create) {
		Dao.loadDriver(dbDriver);
		Connection con = Dao.getConnection();
		boolean status = false;
		String query1 = "INSERT INTO USERTABLE (FIRSTNAME, LASTNAME, EMAIL, ADDRESS, PINCODE, CITY, STATE)VALUES(?,?,?,?,?,?,?)";
		String query2 = "INSERT INTO LOGINUSER (LOGINID , PASSWORD) VALUES(?,?)";
		PreparedStatement ps, ps1;
		try {
			ps = con.prepareStatement(query1);
			ps.setString(1, create.getFName());
			ps.setString(2, create.getLName());
			ps.setString(3, create.getEmail());
			ps.setString(4, create.getAddress());
			ps.setString(5, create.getPinCode());
			ps.setString(6, create.getCity());
			ps.setString(7, create.getState());
			ResultSet rs = ps.executeQuery(); 
			status = rs.next();
			
			ps1 = con.prepareStatement(query2);
			ps1.setString(1, create.getEmail());
			ps1.setString(2, create.getPassword());
			ResultSet rs1 = ps1.executeQuery();
			status = rs1.next();			
			System.out.println(status);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
