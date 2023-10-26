package dao;

import java.util.List;

import domain.UserAccount;
import domain.Users;
import domain.blocks;

public interface UserDAO {
	
	public static final Integer LOGIN_STATUS_ACTIVE = 1;
	public static final Integer LOGIN_STATUS_BLOCKED = 2;
	
	public static final Integer ROLE_ADMIN = 1;
	
	public static final Integer ROLE_OWNER= 2;
	
	public static final Integer ROLE_PARTNER = 3;

	public static final Integer ROLE_EMPLOYEE = 4;
	
	String Login(Users user);
	
	Boolean Registration(Users User);
	
	double taxcalculation(int income, int Deductions, int hra);
	
	String taxpayment(UserAccount ua);
	
	Boolean addaccount(UserAccount ua);
	
	List<blocks> Transactions();
	
	
}
