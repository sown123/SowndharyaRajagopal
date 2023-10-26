package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.UserAccount;
import domain.Users;
import domain.blocks;
import utility.DB;

public class UserDAOImpl implements UserDAO {

	Connection con = null;
	ResultSet rs = null;
	Statement stmt = null;
	PreparedStatement ps = null;
	
	@Override
	public String Login(Users u) {
		String em = u.getEmail();
		String pw = u.getPassword();
		if(em.equalsIgnoreCase("Admin")&&pw.equalsIgnoreCase("Admin")) {
			return "admin";
		} 
		else if(em.equalsIgnoreCase("Admin2")&&pw.equalsIgnoreCase("Admin2")){
			return "admin2";
		}
		
		
		else {
		
		String sql = "SELECT * FROM users WHERE Email='"+em+"' AND Password='"+pw+"'";
	
		try {
			Connection con = DB.getcon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				String Role = rs.getString("Role");
				int LS = rs.getInt("LoginStatus");
				u.setUid(rs.getInt("UserId"));
				u.setPan(rs.getString("pan"));
				if(LS==UserDAO.LOGIN_STATUS_BLOCKED) {
					return "blocked";
				}else {
					if(Role.equals("OWNER")){
						return "owner";
					}else if(Role.equals("PARTNER")){
						return "partner";
					}else if(Role.equals("EMPLOYEE")){
						//System.out.println("Employee");
						return "employee";
					}
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "error";
		}
	}

	@Override
	public Boolean Registration(Users u) {
		String sql = "INSERT INTO users(Name,Email,Password,Phone,Role,LoginStatus,pan)"
					+" VALUES('"+u.getName()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getPhone()+"','"+u.getRole()+"','"+2+"','"+u.getPan()+"')";
		try {
			int i = DB.getcon().prepareStatement(sql).executeUpdate();
			if(i>0) {
				return true;
			}else {
				return false;
			}
			

		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		//
		return false;
	}

	@Override
	public double taxcalculation(int income, int Deductions, int hra1) {
		int inc = income;
		int ded = Deductions;
		int hra = hra1;
		double tax;
		int i = (inc-ded)*12;
		
		if(i<=250000)
			tax=0;
		else if(250001<=i && i<=500000)
			tax=0.05*i;
		else if(500001<=i && i<=750000)
			tax=0.1*i;
		else if(750001<=i && i<=1000000)
			tax=0.15*i;
		else if(750001<=i && i<=1000000)
			tax=0.15*i;
		else if(1000001<=i && i<=1250000)
			tax=0.20*i;
		else if(1250001<=i && i<=1500000)
			tax=0.25*i;
		else
			tax=0.30*i;
		
		return tax;
	}

	@Override
	public String taxpayment(UserAccount ua) {
		String sql = "SELECT * FROM useraccounts WHERE userid='"+ua.getUid()+"' AND card='"+ua.getCard()+"'";
		
		try {
			con = DB.getcon();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				String name = rs.getString("name");
				String exp1 = rs.getString("exp1");
				String exp2 = rs.getString("exp2");
				String cvv = rs.getString("cvv");
				int balance = Integer.parseInt(rs.getString("balance"));
				if(ua.getExpiry().equals(exp1) && ua.getExpiry2().equals(exp2)&& ua.getCvv().equals(cvv)) {
					if(balance<ua.getTaxamt()) {
						return "insufficient";
					}else {
						int acc = balance - ua.getTaxamt();
						String sql1 = "UPDATE useraccounts SET balance='"+acc+"' WHERE uid='"+ua.getUid()+"'";
						PreparedStatement ps = con.prepareStatement(sql1);
						int i = ps.executeUpdate();
						if(i>0) {
							return "success";
						}
					}
				}else {
					return "wrongdata";
				}
			}else {
				return "notfound";
			}
		
		
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return "error";
	}

	@Override
	public Boolean addaccount(UserAccount ua) {
		String sql = "INSERT into useraccounts(userid,name,card,exp1,exp2,cvv,balance) "
					+"VALUES('"+ua.getUid()+"','"+ua.getName()+"','"+ua.getCard()+"','"+ua.getExpiry()+"','"+ua.getExpiry2()+"','"+ua.getCvv()+"','"+ua.getBalance()+"')";
		try {
			int i = DB.getcon().prepareStatement(sql).executeUpdate();
			if(i>0) {
				return true;
			}else {
				return false;
			}
			

		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		//
		return false;
		
		
	}

	@Override
	public List<blocks> Transactions() {
		ArrayList<blocks> list = null;
		blocks c = null;
		
		try {
			
			list = new ArrayList<blocks>();
			String sql = "SELECT * FROM config";
			con = DB.getcon();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				c = new blocks();
				c.setData(rs.getString("data"));
				c.setNext(rs.getString("nexthash"));
				c.setPre(rs.getString("prehash"));
				c.setPan(rs.getString("pan"));
				c.setUid(rs.getString("UserId"));
				list.add(c);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
}
	


