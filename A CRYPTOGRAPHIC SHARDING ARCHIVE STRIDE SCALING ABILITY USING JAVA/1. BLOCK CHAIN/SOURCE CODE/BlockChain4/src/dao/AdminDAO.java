package dao;

import java.util.List;

import domain.Blockchain;
import domain.Pslip;
import domain.Users;

public interface AdminDAO {
	
	List<Users> EmployeeList();
	
	public void approve(String uid);
	
	public void revokeuser(String uid);
	
	boolean pslip(Pslip p);
	
	String addsalary(Blockchain b);
	
}
