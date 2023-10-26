package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.UserDAOImpl;
import domain.Users;

/**
 * Servlet implementation class RegisterControl
 */
@WebServlet("/RegisterControl")
public class RegisterControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDAO userdao = new UserDAOImpl();
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
   		Users u = new Users();
   		u.setEmail(req.getParameter("em"));
   		u.setName(req.getParameter("n"));
   		u.setPhone(req.getParameter("p"));
   		u.setPassword(req.getParameter("pw1"));
   		u.setRole(req.getParameter("Role"));
   		u.setPan(req.getParameter("pan"));
   		boolean result = userdao.Registration(u);
   		if(result) {
   			res.sendRedirect("index.jsp?st=reg");
   		}else {
   			res.sendRedirect("RegistrationForm.jsp?st=reg2");
   		}
   				
  
	}

}
