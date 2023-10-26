<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@page import="utility.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Integer id = (Integer)session.getAttribute("uid");
String pan = (String)session.getAttribute("pan");
String insure = request.getParameter("insurance");
String rent = request.getParameter("rent");
String loan = request.getParameter("loan");
String tds = request.getParameter("taxamt");
try
{
String sql = "UPDATE payslip SET tds='"+tds+"',insurance='"+insure+"',rent='"+rent+"',loan='"+loan+"' WHERE userid='"+id+"'";
Connection conn = DB.getcon();
PreparedStatement stmt=conn.prepareStatement(sql);
int i = stmt.executeUpdate(); 
if(i>0){
	response.sendRedirect("Employee.jsp?st=ded");
}else{
	response.sendRedirect("ApplyDeductions.jsp?st=ded");
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>