package controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;
import dao.AdminDAOImpl;
import dao.UserDAO;
import dao.UserDAOImpl;
import domain.Blockchain;
import domain.Pslip;
import domain.Users;

@WebServlet("/AdminControl")
public class AdminControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher = null;
	AdminDAO admindao = new AdminDAOImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("act");
		
		if(action == null) {
			action = "LIST";
		}
		
		switch(action) {
			
			case "LIST":
				listEmployee(request, response);
				break;
				
			case "APPROVE":
				approve(request, response);
				break;
				
			case "BLOCK":
				block(request, response);
				break;
				
			case "PSLIP":
				addpay(request, response);
				break;

			case "P":
				slip(request, response);
				break;
			
			case "ADDSAL":
				paytax(request, response);
				break;	
				
				
			/*default:
				listEmployee(request, response);
				break;*/
				
		}
	}
	
	private void paytax(HttpServletRequest r, HttpServletResponse s) throws ServletException, IOException {
		HttpSession session = r.getSession();
		//BSR CODE
		Random random = new Random();
		int bsr1 = random.nextInt(1000000);
		String bsr = Integer.toString(bsr1);//1
		//Serial No.
		int chalan1 = random.nextInt(10000);
		String chalan = Integer.toString(chalan1);//2
		
		String date = r.getParameter("date"); //3
		String pan = (String)session.getAttribute("pan");//4
		String tax = (String)session.getAttribute("taxamount");//5
		
		Blockchain b = new Blockchain();
		b.setBsr(bsr);
		b.setSerial(chalan);
		b.setTaxamount(tax);
		b.setPan(pan);
		b.setDate(date);
		
		String add = admindao.addsalary(b);
		if(add.equals("success")) {
			System.out.println("success");
			dispatcher = r.getRequestDispatcher("AddSalary.jsp?st=ad");
			dispatcher.forward(r, s);
			
		}else {
			System.out.print("Postphoned success");
			dispatcher = r.getRequestDispatcher("AddSalary2.jsp?st=ad2");
			dispatcher.forward(r, s);
		}
		
		
		
	}

	private void slip(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String uid = request.getParameter("id");
		String pan = request.getParameter("pid");
		HttpSession session = request.getSession();
		session.setAttribute("id", uid);
		session.setAttribute("pid", pan);
		dispatcher = request.getRequestDispatcher("AddPayslip.jsp");
		dispatcher.forward(request, response);
	}

	private void listEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Users> thelist = admindao.EmployeeList();
		//System.out.println(thelist);
		request.setAttribute("list", thelist);
		dispatcher = request.getRequestDispatcher("EmployeeList.jsp");
		dispatcher.forward(request, response);
	}
	
	private void approve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		admindao.approve(uid);
		listEmployee(request, response);
	}

	private void block(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		admindao.revokeuser(uid);
		listEmployee(request, response);
	}
	
	private void addpay(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Pslip p = new Pslip();
		p.setUid(req.getParameter("id"));
		System.out.println(req.getParameter("id"));
		p.setDa(req.getParameter("i2"));
		p.setGrosal(req.getParameter("s1"));
		p.setHra(req.getParameter("i3"));
		p.setNetsal(req.getParameter("s2"));
		p.setPan(req.getParameter("pid"));
		p.setPf(req.getParameter("d3"));
		p.setPt(req.getParameter("d1"));
		p.setSa(req.getParameter("i4"));
		p.setSalary(req.getParameter("i1"));
		p.setTds(req.getParameter("d2"));
		boolean result = admindao.pslip(p);
		if(result) {
			dispatcher = req.getRequestDispatcher("Admin.jsp?st=pad");
			dispatcher.forward(req, res);
		}else {
			dispatcher = req.getRequestDispatcher("AddPayslip.jsp?st=pad2");
			dispatcher.forward(req, res);
		}
		
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
