package com.login.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.Dao.LoginDao;
import com.login.entity.LoginEntity;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("uname");
		String passwd=request.getParameter("pass");
		
		LoginEntity login = new LoginEntity();
		login.setUsername(username);
		login.setPassword(passwd);
		
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		
		LoginDao loginDao = new LoginDao();
		if(loginDao.validate(login)) {
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

}
