package com.login.web;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.Dao.ProfileDao;
import com.login.entity.LoginEntity;

@WebServlet("/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Click");
		LoginEntity login = new LoginEntity();
		ProfileDao profile = new ProfileDao();
		
		ArrayList<ResultSet> outer = profile.getDatails(login);
		
		System.out.println("The name are as follows:");
        for (int i = 0; i < outer.size(); i++) {
           System.out.println(outer.get(i));
        }
		
	}
}
