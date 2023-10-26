<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utility.DB"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StatemmentDB</title>
</head>
<body>
<%
Integer uid = (Integer)session.getAttribute("uid");
String sta = request.getParameter("sta");

String sql = "UPDATE payslip SET Pstatus='"+sta+"' WHERE userid='"+uid+"'";
PreparedStatement ps = DB.getcon().prepareStatement(sql);
int i = ps.executeUpdate();
if(i>0){
	response.sendRedirect("Employee.jsp");
}



%>



</body>
</html>