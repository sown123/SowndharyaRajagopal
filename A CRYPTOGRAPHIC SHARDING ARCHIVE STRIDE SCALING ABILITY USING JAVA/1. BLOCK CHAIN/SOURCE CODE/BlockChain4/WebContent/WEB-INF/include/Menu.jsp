<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!-- USER -->
<c:if test="${sessioScope.Role==null && sessionScope.uid==null}">
						<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="LoginForm.jsp">Sign In</a></li>
							<!-- <li><a href="projects.html">Projects</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Short Codes <b class="caret"></b></a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul>
							</li>
							<li><a href="contact.html">Contact</a></li> -->
</c:if>

<!-- ADMIN -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">
<!-- Admin is logged in : Admin Menu -->
						<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="AdminControl?act=LIST">User List</a></li>
							<li><a href="AddSalary.jsp">Add Salary</a></li>
							<li><a href="Logout.jsp">Logout</a></li>
</c:if>

<!-- EMPLOYEE -->
 <c:if test="${sessionScope.uid!=null && sessionScope.Role==2 }">
<!-- Employee is logged in : Employee Menu -->
						<li><a href="Employee.jsp">Home</a></li>
						<li><a href="EmployeeSlip.jsp">PaySlip</a></li>
						<li><a href="Transaction.jsp">TaxPayments</a></li>
						<li><a href="Statement.jsp">Submit Proof</a></li>
						<li><a href="Applypf.jsp">Apply Pf</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
</c:if>

<!-- OWNER -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">
<!-- Employee is logged in : Employee Menu -->
						<li><a href="Owner.jsp">Home</a></li>
						<li><a href="CalculateTax.jsp">Pay Tax</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
</c:if>

<!-- GOVT -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==4}">
<!-- GOVT is logged in : Employee Menu -->
						<li><a href="Admin2.jsp">Home</a></li>
						<li><a href="StatementAdmin.jsp">STATEMENTS</a></li>
						<li><a href="TransactionAdmin.jsp">Tax Payments</a></li>
						<li><a href="Viewpf.jsp">PF Requests</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
</c:if>
