package com.login.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.login.entity.LoginEntity;

public class ProfileDao {

	private String dbDriver = "oracle.jdbc.driver.OracleDriver";

	public ArrayList<ResultSet> getDatails(LoginEntity login) {
		
		Dao.loadDriver(dbDriver);
		Connection con = Dao.getConnection();
		boolean status = false;
		String query = "select * from USERTABLE where EMAIL='aman@gmail.com'";
		PreparedStatement ps;
		ArrayList<ResultSet> Ar = new ArrayList<>();
		try {
			ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery(); 
			Ar.add(rs);
			status = rs.next();
			System.out.println(status);
//			if(status) {
//				while (rs.next()) {
//					Ar.add(rs.getString("name"));
//				}
//				System.out.println("The name are as follows:");
//				for (int i = 0; i < Ar.size(); i++) {
//					System.out.println(Ar.get(i));
//				}
//			}
		}catch(SQLException e) {
			e.printStackTrace();
		}	
		return Ar;
	}


}
