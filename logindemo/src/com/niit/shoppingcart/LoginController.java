package com.niit.shoppingcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public LoginController() {
        super();
       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	
		String uname= request.getParameter("user");
		String  pwd= request.getParameter("password");
		LoginDAO logindao= new LoginDAO();
		if(logindao.isValidUser(uname,pwd))
{	
	RequestDispatcher dispatcher = request.getRequestDispatcher("home.html");
	dispatcher.forward(request,response);
	out.println("valid user");
}
		else
		{Object dispatcher = request.getRequestDispatcher("login.html");
		PrintWriter Writer = response.getWriter();
		Writer.append("invalid credentials please try again");
		((RequestDispatcher) dispatcher).include(request,response);
		}
	}
}
	

