package dao;

import java.io.FileNotFoundException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.xml.bind.DatatypeConverter;

import com.itextpdf.text.DocumentException;

import domain.Blockchain;
import domain.Pslip;
import domain.Users;
import utility.DB;

public class AdminDAOImpl implements AdminDAO{
	Connection con = null;
	ResultSet rs = null;
	Statement stmt = null;
	PreparedStatement ps = null;
	Users u = null;
	
	

	@Override
	public List<Users> EmployeeList() {
		ArrayList<Users> list = null;
		Users u = null;
		
		try {
			
			list = new ArrayList<Users>();
			String sql = "SELECT * FROM users";
			con = DB.getcon();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.println(rs.getInt("UserId"));
				u = new Users();
				u.setUid(rs.getInt("UserId"));
				u.setName(rs.getString("Name"));
				u.setEmail(rs.getString("Email"));
				u.setPhone(rs.getString("Phone"));
				u.setRole(rs.getString("Role"));
				u.setLoginStatus(rs.getInt("LoginStatus"));
				u.setPan(rs.getString("pan"));
				list.add(u);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}





	@Override
	public void approve(String uid) {
		String sql = "UPDATE users SET LoginStatus='"+UserDAO.LOGIN_STATUS_ACTIVE+"' WHERE UserId='"+uid+"'";
		try {
				con = DB.getcon();
				ps = con.prepareStatement(sql);
				ps.executeUpdate();
				
			} catch (SQLException e) {
				
			}
		
	}





	@Override
	public void revokeuser(String uid) {
		String sql = "UPDATE users SET LoginStatus='"+UserDAO.LOGIN_STATUS_BLOCKED+"' WHERE UserId='"+uid+"'";
		try {
				con = DB.getcon();
				ps = con.prepareStatement(sql);
				ps.executeUpdate();
				
			} catch (SQLException e) {
				
			}
	}



	@Override
	public boolean pslip(Pslip p) {
		String sql = "INSERT INTO payslip(userId,pan,salary,da,hra,sa,pt,tds,pf,grosal,netsal)"
					+" VALUES('"+p.getUid()+"','"+p.getPan()+"','"+p.getSalary()+"','"+p.getDa()+"','"+p.getHra()+"','"+p.getSa()+"','"+p.getPt()+"','"+p.getTds()+"','"+p.getPf()+"','"+p.getGrosal()+"','"+p.getNetsal()+"')";
		Random random = new Random();
		long UAN = (long)random.nextInt(325425) + 123456123456L;
		
		String sql2 = "INSERT INTO pfreq(uid,UAN,PAN,pfamount) VALUES('"+p.getUid()+"','"+UAN+"','"+p.getPan()+"','"+p.getPf()+"')";
		try {
			con = DB.getcon();
			ps = con.prepareStatement(sql);
			PreparedStatement ps1 = con.prepareStatement(sql2);
			int i = ps.executeUpdate();
			int i1 = ps1.executeUpdate();
			if(i>0 && i1>0) {
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			
		}
		return false;
		
		
	}



	@Override
	public String addsalary(Blockchain b) {
		
		
		 String pre = "00000000000000000000000000000000000";
		// data
		    try{ 
					Connection con = DB.getcon();
			        
			        Statement st = con.createStatement();
			        ResultSet rs = st.executeQuery("select * from blockchain where pan='"+b.getPan()+"' and prehash ='"+ pre +"'");//check the block is first
			        
			        if(rs.next())
			        {
			        	Statement st1 = con.createStatement();
				        ResultSet rs1 = st1.executeQuery("select * from blockchain where pan='"+b.getPan()+"' order by counts desc limit 1");//get the last block index
				        
				        if(rs1.next())
				        {
				        	String B = rs1.getString("counts");
				        	Statement st2 = con.createStatement();
					        ResultSet rs2 = st2.executeQuery("select * from blockchain where pan='"+b.getPan()+"' and counts='"+ B +"'");//get the last data block hash
					       
					        if(rs2.next())
					        {
					        
					        	String previoushash = rs2.getString("nexthash");
					        	
					        	String tohash = previoushash + b.getBsr() + b.getSerial() + b.getTaxamount();
					        	
					        	//hashing
					        	 MessageDigest md = MessageDigest.getInstance("SHA-256");
		       					 byte[] digest = md.digest(tohash.getBytes(StandardCharsets.UTF_8));
		        				String sha256 = DatatypeConverter.printHexBinary(digest).toLowerCase();
		        				
		        				int B2 = Integer.parseInt(B);
		        				int B3 = B2+1;
					        	
					        	PreparedStatement ps = con.prepareStatement("insert into blockchain (pan,prehash,bsr,serial,taxamount,nexthash,counts,date) values ('"+b.getPan()+"','"+previoushash+"','"+b.getBsr()+"','"+b.getSerial()+"','"+b.getTaxamount()+"','"+sha256+"','"+ B3+"','"+b.getDate()+"')");
					        	Statement stmt = con.createStatement();
					        	ResultSet rs5 = stmt.executeQuery("SELECT pf FROM payslip WHERE pan='"+b.getPan()+"'");
					        	if(rs5.next()) {
					        		int pfamount = Integer.parseInt(rs5.getString("pf"));
					        		Statement stmtu = con.createStatement();
						        	ResultSet rs6 = stmtu.executeQuery("SELECT pfamount FROM pfreq WHERE pan='"+b.getPan()+"'");
						        	if(rs6.next()) {
						        		int addpf = pfamount + Integer.parseInt(rs6.getString("pfamount")); 
						        		PreparedStatement pspf = con.prepareStatement("UPDATE pfreq SET pfamount='"+addpf+"'WHERE pan='"+b.getPan()+"'");	
						        		pspf.executeUpdate();
						        				}
					        	
					        		
					        	}
					        			
					        	
					        	
					        	
					        	
					        	
					        	int i = ps.executeUpdate();
					        	if(i>0) {
					        		return "success";
					        	}else {
					        		return "notinsert";
					        	}
					        		
					        }
					       
					       
				        }
			        
			        }
			        else 
			        {
			        	String tohash = pre + b.getBsr() + b.getSerial() + b.getTaxamount();
			        	
			        	MessageDigest md = MessageDigest.getInstance("SHA-256");
						byte[] digest = md.digest(tohash.getBytes(StandardCharsets.UTF_8));
						String sha256 = DatatypeConverter.printHexBinary(digest).toLowerCase();
			        	PreparedStatement ps = con.prepareStatement("insert into blockchain (pan,prehash,bsr,serial,taxamount,nexthash,counts,date) values ('"+b.getPan()+"','"+ pre +"','"+b.getBsr()+"','"+b.getSerial()+"','"+b.getTaxamount()+"','"+sha256+ "','1','"+b.getDate()+"')");
			        	Statement stmt = con.createStatement();
			        	ResultSet rs5 = stmt.executeQuery("SELECT pf FROM payslip WHERE pan='"+b.getPan()+"'");
			        	if(rs5.next()) {
			        		int pfamount = Integer.parseInt(rs5.getString("pf"));
			        		Statement stmtu = con.createStatement();
				        	ResultSet rs6 = stmtu.executeQuery("SELECT pfamount FROM pfreq WHERE pan='"+b.getPan()+"'");
				        	if(rs6.next()) {
				        		int addpf = pfamount + Integer.parseInt(rs6.getString("pfamount")); 
				        		PreparedStatement pspf = con.prepareStatement("UPDATE pfreq SET pfamount='"+addpf+"'WHERE pan='"+b.getPan()+"'");	
				        		pspf.executeUpdate();		
				        	}
			        	
			        		
			        	}
			        	
			        	int i = ps.executeUpdate();
						if(i>0) {
							return "success";
						}else {
							return "notinsert";
						}
						
						
						
						
						
			        }
									  				
				}
				catch (Exception e2) {System.out.println(e2);}  	
		    
		return "error";
	}

	
}