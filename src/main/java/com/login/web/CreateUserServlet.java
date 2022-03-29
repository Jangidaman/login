package com.login.web;

import static javax.swing.JOptionPane.showMessageDialog;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.Dao.CreateUserDao;
import com.login.entity.CreateUserEntity;

@WebServlet("/CreateUserServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String FName = request.getParameter("FName");
		String LName = request.getParameter("LName");
		String Email = request.getParameter("Email");
		String Address = request.getParameter("Address");
		String PinCode = request.getParameter("PinCode");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String Password = request.getParameter("Password");
		String RePassword = request.getParameter("RePassword");
		
		CreateUserEntity create = new CreateUserEntity();
		create.setFName(FName);
		create.setLName(LName);
		create.setEmail(Email);
		create.setAddress(Address);
		create.setPinCode(PinCode);
		create.setCity(city);
		create.setState(state);
		create.setPassword(Password);
		create.setRePassword(RePassword);
		
		CreateUserDao createDao = new CreateUserDao();
		if (Password.equals(RePassword)) {
			if(createDao.validate(create)) {
				response.sendRedirect("login.jsp");
			}
			else {
				response.sendRedirect("createUser.jsp");
			}
		}else {
			showMessageDialog(null, "Password is not matched");
			response.sendRedirect("NewCustomer.jsp");
		}
		
	}

}
