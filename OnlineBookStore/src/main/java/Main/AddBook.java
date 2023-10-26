package Main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class AddBook {

	public static void add() {

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
			 
			    Scanner sc=new Scanner(System.in);
			    System.out.println("Enter book name:");
				String BookName=sc.nextLine();
				System.out.println("Enter book Id:");
				int bookid =sc.nextInt();
				sc.nextLine();
				System.out.println("Enter book Categories:");
				String BookCategories=sc.nextLine();
				System.out.println("Enter book price:");
				float BookPrice =sc.nextFloat();
				sc.nextLine();
				System.out.println("Enter language:");
				String Language=sc.nextLine();
				System.out.println("Enter book publisher:");
				String publisher=sc.nextLine();
				
				String y="insert into booklist values('"+BookName+"','"+bookid+"','"+BookCategories+"','"+BookPrice+"','"+Language+"','"+publisher+"')";
				int i=stmt.executeUpdate(y);
				if(i>0)
				{
					System.out.println("Book Added Successfully\n");
				}
				
				}catch(Exception e)
				{
					e.printStackTrace();
				}
		 }

	}


