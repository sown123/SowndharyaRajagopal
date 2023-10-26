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

@WebServlet("/LoginControl")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDAO userdao = new UserDAOImpl();
	
   	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
   		HttpSession session = req.getSession();
   		Users user = new Users();
   		user.setEmail(req.getParameter("em"));
   		user.setPassword(req.getParameter("pw"));
   		String result = userdao.Login(user);
   	
   		if(result.equals("admin")) 
   		{
   			String A = "1";
   			session.setAttribute("Role", A);
   			int uid=1;
  			session.setAttribute("uid", uid);
   			res.sendRedirect("Admin.jsp");
   		}
   		else if(result.equals("employee")) 
   		{
   			String E = "2";
   			session.setAttribute("Role", E);
   			session.setAttribute("uid", user.getUid());
   			session.setAttribute("pan", user.getPan());
   			res.sendRedirect("Employee.jsp?st=emp");
   		}
   		else if (result.equals("owner")) 
   		{
   			String O = "3";
   			session.setAttribute("Role", O);
   			session.setAttribute("uid", user.getUid());
   			session.setAttribute("email", user.getEmail());
   			res.sendRedirect("Owner.jsp");
   		}
   		else if(result.equals("admin2")) 
   		{
   			String A = "4";
   			session.setAttribute("Role", A);
   			int uid=1;
  			session.setAttribute("uid", uid);
   			res.sendRedirect("Admin_govt.jsp");
   		}
   		else if (result.equals("error")) 
   		{
   			res.sendRedirect("LoginForm.jsp?st=err");
   		}
   		else if (result.equals("blocked"))
   		{
   			res.sendRedirect("LoginForm.jsp?st=blk");
   		}
}
}


