package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.UserDAOImpl;
import domain.UserAccount;
import domain.Users;
import domain.blocks;

@WebServlet("/EmployeeControl")
public class EmployeeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	RequestDispatcher dispatcher = null;
	UserDAO userdao = new UserDAOImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("act");
		
		switch(action) {
			
			case "PAY":
				payment(request, response);
				break;
				
			case "ADD":
				addAccount(request, response);
				break;
				
			case "BC":
				transtions(request, response);
				break;
			
			/*case "BLOCK":
				block(request, response);
				break;
				
			default:
				listEmployee(request, response);
				break;*/
				
		}
	}
	
	
	
	private void transtions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<blocks> thelist = userdao.Transactions();
		//System.out.println(thelist);
		request.setAttribute("list", thelist);
		dispatcher = request.getRequestDispatcher("Transaction.jsp");
		dispatcher.forward(request, response);
		
	}



	protected void payment(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		int taxamt = Integer.parseInt(req.getParameter("p5"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		dispatcher = req.getRequestDispatcher("Payment_email.jsp");
		dispatcher.forward(req, res);
		
		
		
		
	}
	
	protected void addAccount(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		UserAccount ua = new UserAccount();
		Integer userid = (Integer)session.getAttribute("uid");
		ua.setUid(userid);
		ua.setName(req.getParameter("n"));
		ua.setCard(req.getParameter("cnum"));
		ua.setExpiry(req.getParameter("month"));
		ua.setExpiry2(req.getParameter("year"));
		ua.setCvv(req.getParameter("cvv"));
		ua.setBalance(req.getParameter("bal"));
		boolean a = userdao.addaccount(ua);
		if(a) {
			res.sendRedirect("Owner.jsp");
		}else {
			res.sendRedirect("AddAccount.jsp");
		}
		
		
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		int income = Integer.parseInt(req.getParameter("i1"))+Integer.parseInt(req.getParameter("i2"))+Integer.parseInt(req.getParameter("i3"))+Integer.parseInt(req.getParameter("i4"));
		int deductions = Integer.parseInt(req.getParameter("d1"))+Integer.parseInt(req.getParameter("d2"))+Integer.parseInt(req.getParameter("d3"))+Integer.parseInt(req.getParameter("d4"));
		int hra = Integer.parseInt(req.getParameter("hra1"))+Integer.parseInt(req.getParameter("hra2"))+Integer.parseInt(req.getParameter("hra3"))+Integer.parseInt(req.getParameter("hra4"));
		int i = income+hra-deductions;
		double tax = userdao.taxcalculation(income, deductions, hra);
		req.setAttribute("t", tax);
		req.setAttribute("ded", deductions);
		req.setAttribute("pay", i);
		System.out.println(tax);
		dispatcher = req.getRequestDispatcher("popUp.jsp");
		dispatcher.forward(req, res);
		
		
	}

}
