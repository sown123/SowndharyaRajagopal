package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import Main.implement;

public class MainApp {

	public static void main(String[] args) {
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/onlinebookstore";
		String un="root";
		String pass="root";
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		Scanner sc=new Scanner(System.in);
		implement o=new implement();
		AddBook o1=new AddBook();
		DeleteBook o2=new DeleteBook();
		UpdateBook o3=new UpdateBook();
		try
		{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,un,pass);
			stmt=conn.createStatement();
			boolean islogged=false;
			do {
			System.out.println("1.Login\n2.Register\n3.Exit");
			//Scanner sc=new Scanner(System.in);
			System.out.println("Enter your choice:");
			int choice=sc.nextInt();
			sc.nextLine();
			
			
			
			switch(choice)
			{
			case 1:
				System.out.println("Enter your Email Id:");
				String EmailId=sc.nextLine();
				System.out.println("Enter your Password:");
				String Pass=sc.nextLine();
				
				String e="select * from logindetails where uemail='"+EmailId+"' and password='"+Pass+"'";
				rs=stmt.executeQuery(e);
				
				if(rs.next())
				{
				//while(rs.next())
				//{
	
						islogged=true;
						System.out.println("Welcome "+rs.getString("uname")+"!");

					//}
				}else
				{
					System.out.println("Invalid credencials! Please check the user id and password\n");
				}
					
					
				
				
				break;
			case 2:
				
				System.out.println("Enter your username:");
				String username=sc.nextLine();
				System.out.println("Enter your Email Id:");
				String REmailId=sc.nextLine();
				System.out.println("Enter your Password:");
				String RPass=sc.nextLine();
				String n="insert into logindetails values('"+username+"','"+REmailId+"','"+RPass+"')";
				int i3=stmt.executeUpdate(n);
				if(i3>0)
				{
					System.out.println("Registered Successfully");
				}
				break;
				
			case 3:
				System.out.println("Exiting");
				System.exit(0);
			break;	
			
			
			default:
				System.out.println(choice+" is not in the option!,\nPlease Enter Right Option\n ");
			}
			
				
			
			}while(!islogged);
			
			
			while(true) {
				System.out.println(" ");
				System.out.println("1.List of Books in the Store");
				System.out.println("2.Search book by using Book id");
				System.out.println("3.List of Books by Categories");
				System.out.println("4.Search Book By using Book name");
				System.out.println("5.Enter Book Id to Buy");
				System.out.println("6.Add Book");
				System.out.println("7.Delete Book");
				System.out.println("8.Update Book");
				System.out.println("9.Exit");
				System.out.println("Select your Choice");
				
				int Choice=sc.nextInt();
				sc.nextLine();
				
				
				switch(Choice)
				{
				case 1:
				System.out.println("---------------------------------------------------------------------BOOKLIST-----------------------------------------------------------------------");
				String sql1="select * from booklist";
				 rs=stmt.executeQuery(sql1);
				 System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n","Book name","Book Id", "Book categories", "Book price" , "language", "publisher");
				 System.out.printf("----------------------------------------------------------------------------------------------------------------------------------------------------%n");
				while(rs.next())
				{
					
					System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n",rs.getString("bname"),rs.getInt("bid"), rs.getString("bcategories"), rs.getString("bprice") , rs.getString("language"), rs.getString("bpublisher"));
				}
				break;
				
				case 2:
					System.out.println("Enter a Book Id");
					int BId=sc.nextInt();
					sc.nextLine();
					String sql2="select * from booklist where bid='"+BId+"'";
					 rs=stmt.executeQuery(sql2);
					 
					
					 if(rs.next()) 
					{
					
						 System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n","Book name","Book Id", "Book categories", "Book price" , "language", "publisher");
						 System.out.printf("----------------------------------------------------------------------------------------------------------------------------------------------------%n");
						System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n",rs.getString("bname"),rs.getInt("bid"), rs.getString("bcategories"), rs.getString("bprice") , rs.getString("language"), rs.getString("bpublisher"));
						
						}else
						{
							System.out.println(BId+" is not in the book list");
						}
					break;
					
				case 3:
					System.out.println("Enter a Book Categories:");
					String BCategories=sc.nextLine();
					
					String sql3="select * from booklist where bcategories='"+BCategories+"'";
					 rs=stmt.executeQuery(sql3);
					 
					 System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n","Book name","Book Id", "Book categories", "Book price" , "language", "publisher");
					 System.out.printf("----------------------------------------------------------------------------------------------------------------------------------------------------%n");
				
					 while(rs.next()) {
						 	
						 
						System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n",rs.getString("bname"),rs.getInt("bid"), rs.getString("bcategories"), rs.getString("bprice") , rs.getString("language"), rs.getString("bpublisher"));
						
						}
					
					break;
					
				case 4:
					
					
					System.out.println("Enter a Book Name:");
					String BName=sc.nextLine();
					String sql4="select * from booklist where bname='"+BName+"'";
					 rs=stmt.executeQuery(sql4);
					 System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n","Book name","Book Id", "Book categories", "Book price" , "language", "publisher");
					 System.out.printf("----------------------------------------------------------------------------------------------------------------------------------------------------%n");
					
					
					 if(rs.next()) 
					     {
						 
							 //System.out.println("hi");
						System.out.printf("%-40s %-20s %-20s  %-20s %-20s  %-20s %n",rs.getString("bname"),rs.getInt("bid"), rs.getString("bcategories"), rs.getString("bprice") , rs.getString("language"), rs.getString("bpublisher"));
						 }
						else
						 {
							 System.out.println("Book Name is mis-spelled\n");
						 }
					break;
				case 5:
					o.cell();
					break;	
				case 6:
					o1.add();
					break;
				case 7:
					o2.del();
					break;
				case 8:
					o3.upd();
					break;
				case 9:
					System.out.println("Exiting");
					System.exit(0);
				default:
					System.out.println(Choice+" is not in the Option!\nPlease select Right Option\n " );
				}
				
				
				
				}
		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
