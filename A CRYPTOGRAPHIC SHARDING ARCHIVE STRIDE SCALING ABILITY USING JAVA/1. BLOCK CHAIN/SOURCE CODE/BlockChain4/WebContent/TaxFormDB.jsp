<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utility.DB"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession ses=request.getSession();
String message=null;
Integer uid = (Integer)session.getAttribute("uid");
String name=request.getParameter("name");
String applicable=request.getParameter("applicable");		
String ptype =request.getParameter("ptype");
String mode =request.getParameter("mode");
String pan =request.getParameter("pan");
String year=request.getParameter("ayear");

String flat=request.getParameter("flat");
String village =request.getParameter("village");
String lane=request.getParameter("lane");
String area=request.getParameter("area");
String city=request.getParameter("city");
String state=request.getParameter("state");
String pin=request.getParameter("pin");

String taxa = (String)session.getAttribute("taxa");

String sql = "INSERT INTO chalan values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = DB.getcon().prepareStatement(sql);
int j = 1;
ps.setInt(j++,uid);  
ps.setString(j++,name);  
ps.setString(j++,applicable);  
ps.setString(j++,ptype); 
ps.setString(j++,mode);
ps.setString(j++,pan);  
ps.setString(j++,year);
ps.setString(j++,flat);
ps.setString(j++,village);
ps.setString(j++,lane);
ps.setString(j++,area);
ps.setString(j++,city);
ps.setString(j++,state);
ps.setString(j++,pin);
ps.setString(j++, "Pending");
ps.setString(j++, taxa);
int i = ps.executeUpdate();
if(i>0){
	response.sendRedirect("PaymentForm.jsp");
}

%>
</body>
</html>