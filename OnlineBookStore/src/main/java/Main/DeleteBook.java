package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class DeleteBook {
	public static void del() {
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
    System.out.println("Enter book name to delete:");
    String deletebook=sc.nextLine();
    
    String sql="delete from booklist where bname='"+deletebook+"'";
    int i=stmt.executeUpdate(sql);
    
    if(i>0)
    {
    	System.out.println("Book deleted successfully");
    }else
    {
    	System.out.println("book name is mis-spelled");
    }
	}catch(Exception e)
	{
		e.printStackTrace();
	}
}
}