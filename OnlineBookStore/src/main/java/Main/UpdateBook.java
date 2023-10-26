package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class UpdateBook {
	
	public static void upd()
	{
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
			
			while(true) {
			System.out.println(" ");
			System.out.println("1.Update Book Name");
			System.out.println("2.Update Book Id");
			System.out.println("3.Update Book Categories");
			System.out.println("4.Update Book Price");
			System.out.println("5.Update Book Language");
			System.out.println("6.Update Book Publisher");
			System.out.println("7.Exit");
			System.out.println("Select your Choice");
			int Choice=sc.nextInt();
			sc.nextLine();
			switch(Choice)
			{
			case 1:
				System.out.println("Enter book id to update book name:");
				String bookid=sc.nextLine();
				System.out.println("Enter book name:");
				String bookname=sc.nextLine();
				String sql1="update booklist set bname='"+bookname+"' where bid='"+bookid+"'";
				int i=stmt.executeUpdate(sql1);
				if(i>0)
				{
					System.out.println("Book name updated successfully");
				}
				break;
			case 2:
				System.out.println("Enter book name to update book id:");
				String bookname1=sc.nextLine();
				System.out.println("Enter book id:");
				int bookid1=sc.nextInt();
				String sql2="update booklist set bid='"+bookid1+"' where bname='"+bookname1+"'";
				int i2=stmt.executeUpdate(sql2);
				if(i2>0)
				{
					System.out.println("Book id updated successfully");
				}
				break;
			case 3:
				System.out.println("Enter book name to update book id:");
				String bookname2=sc.nextLine();
				System.out.println("Enter book Categories:");
				String bookcategories=sc.nextLine();
				String sql3="update booklist set bcategories='"+bookcategories+"' where bname='"+bookname2+"'";
				int i3=stmt.executeUpdate(sql3);
				if(i3>0)
				{
					System.out.println("Book Categories updated successfully");
				}
				break;
			case 4:
				System.out.println("Enter book name to update book id:");
				String bookname3=sc.nextLine();
				System.out.println("Enter book Price:");
				float bookprice=sc.nextFloat();
				String sql4="update booklist set bprice='"+bookprice+"' where bname='"+bookname3+"'";
				int i4=stmt.executeUpdate(sql4);
				if(i4>0)
				{
					System.out.println("Book Price updated successfully");
				}
				break;
			case 5:
				System.out.println("Enter book name to update book id:");
				String bookname4=sc.nextLine();
				System.out.println("Enter book Language:");
				String booklanguage=sc.nextLine();
				String sql5="update booklist set language='"+booklanguage+"' where bname='"+bookname4+"'";
				int i5=stmt.executeUpdate(sql5);
				if(i5>0)
				{
					System.out.println("Book  language updated successfully");
				}
				break;
			case 6:
				System.out.println("Enter book name to update book id:");
				String bookname5=sc.nextLine();
				System.out.println("Enter book publisher:");
				String bookPubliser=sc.nextLine();
				String sql6="update booklist set bpublisher='"+bookPubliser+"' where bname='"+bookname5+"'";
				int i6=stmt.executeUpdate(sql6);
				if(i6>0)
				{
					System.out.println("Book Publisher updated successfully");
				}
				break;
			case 7:
				System.out.println("Exiting");
				System.exit(0);
				break;
			}
			
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
