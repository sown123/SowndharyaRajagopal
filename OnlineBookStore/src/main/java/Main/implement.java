package Main;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;


public class implement {

 public static void cell() {
	 String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/onlinebookstore";
		String un="root";
		String pass="root";
	
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,un,pass);
			stmt=conn.createStatement();
	 System.out.println("Enter Book Id to Buy");
	 Scanner sc=new Scanner(System.in);
		int buy=sc.nextInt();
		sc.nextLine();
		
		String sql1="select * from booklist where bid='"+buy+"'";
		String sel="select bname from booklist where bid='"+buy+"'";
		
		
		rs=stmt.executeQuery(sql1);
		
		if(rs.next())
		{
			System.out.println("Your Selected "+ rs.getString("bname")+" Book");
			System.out.println("Enter your Address:");
			String address=sc.nextLine();
			
			
			System.out.println("Select the Payments Option: ");
			System.out.println("1.Cash On Delivery");
			System.out.println("2.Google Pay");
			System.out.println("3.Credit/Debit/ATM Card");
			int Payments=sc.nextInt();
			
			switch(Payments)
			{
			case 1:
				System.out.println("Order Conformed");
				System.out.println("Your order is delivered to This Address: "+address);
				break;
			case 2:
				System.out.println("Enter your Phone Number:");
				long Phone_Number=sc.nextLong();
				System.out.println("Enter Verification code:");
				int Verification_Code=sc.nextInt();
				System.out.println("Pay $"+rs.getFloat("bprice"));
				int Price=sc.nextInt();
				System.out.println("Order Conformed");
				System.out.println("Your order is delivered to This Address: "+address);
				break;
			case 3
			:
				System.out.println("Enter your Card Number:");
				long Card_Number=sc.nextLong();
				System.out.println("Enter Valid thru: MM(Month):");
				int MM=sc.nextInt();
				System.out.print("YY(Year)");
				int YY=sc.nextInt();
				System.out.println("Enter CVV:");
				int CVV=sc.nextInt();
				System.out.println("Pay $"+rs.getFloat("bprice"));
				int Price1=sc.nextInt();
				System.out.println("Order Conformed");
				System.out.println("Your order is delivered to This Address: "+address);
				break;
			default:
				System.out.println(Payments+" is not in the option!\nPlease Choose Right Option.");
			}
		}else {
			System.out.println(buy+" is not a valid book id!");
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
 }
	}


