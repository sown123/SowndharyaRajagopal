package utility;

import java.io.FileNotFoundException;


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import java.sql.Statement;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;  

@WebServlet("/Upload")
@MultipartConfig
public class Upload extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public void doPost(HttpServletRequest request,  HttpServletResponse response)     
    		throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
        final Part filePart1 = request.getPart("in");
        final Part filePart2 = request.getPart("re");
        final Part filePart3 = request.getPart("lo");
        HttpSession session=request.getSession(true); 
        Integer uid = (Integer)session.getAttribute("uid");
        String sta = request.getParameter("sta");
        
        InputStream pdfFileBytes1 = null;
        InputStream pdfFileBytes2 = null;
        InputStream pdfFileBytes3 = null;
        
        final PrintWriter writer = response.getWriter();
 
        try {
        		 pdfFileBytes1 = filePart1.getInputStream();  // to get the body of the request as binary data
                 pdfFileBytes2 = filePart2.getInputStream();
                 pdfFileBytes3 = filePart3.getInputStream();   
        	
         
            final byte[] bytes1 = new byte[pdfFileBytes1.available()];
            final byte[] bytes2 = new byte[pdfFileBytes2.available()];
            final byte[] bytes3 = new byte[pdfFileBytes3.available()];
            
            
            pdfFileBytes1.read(bytes1);  //Storing the binary data in bytes array.
            pdfFileBytes2.read(bytes2);
            pdfFileBytes3.read(bytes3);
            Connection  con=null;
 
               try {
                     con = DB.getcon();
                  } 
               catch (Exception e) 
               		{
                        System.out.println(e);
                        System.exit(0);
               		}
 
                int success=0;
                String sql = "UPDATE payslip SET p1=?,p2=?,p3=?,Pstatus='"+sta+"' WHERE userid='"+uid+"'";
                PreparedStatement pstmt = con.prepareStatement(sql);
               
                int j = 1;
                pstmt.setBytes(j++,bytes1); 
                pstmt.setBytes(j++,bytes2);
                pstmt.setBytes(j++,bytes3);//Storing binary data in blob field
                success = pstmt.executeUpdate();
                if(success>=1) {   
     		     request.getRequestDispatcher("Employee.jsp?st=syes").include(request, response);  
                }
                else {
     			    request.getRequestDispatcher("Statement.jsp?st=snot").include(request, response);  
                	
                }
               
 
                 //writer.println("<br/> Book Successfully Stored");
 
        } catch (FileNotFoundException fnf) {
            writer.println("You  did not specify a file to upload");
            writer.println("<br/> ERROR: " + fnf.getMessage());
 
        } catch (SQLException e) 
        {
            e.printStackTrace();
        } finally {
 
            if (pdfFileBytes1 != null) {
                pdfFileBytes1.close();
                pdfFileBytes2.close();
                pdfFileBytes3.close();
                
            }
            if (writer != null) {
                writer.close();
            }
        }
 
    }
 
}