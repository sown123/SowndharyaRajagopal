<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="utility.DB"%>


<html>
<head>
<title>Report Email</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String uid=request.getParameter("user");
String email = null;
String insure = null;
String rent = null;
String loan = null;
String tds = null;
String proof = null;
String status = null;
int pending = 0;

try
{
	String sql = "SELECT * FROM payslip WHERE userid='"+uid+"'";
Connection con = DB.getcon();
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
if(rs.next()){
	insure = rs.getString("insurance");
	rent = rs.getString("Rent");
	loan = rs.getString("loan");
	status = rs.getString("Pstatus"); 
	if(status.equals("Pending")){
		pending = Integer.parseInt(insure)+Integer.parseInt(loan)+Integer.parseInt(status)*12;
	}else{
		pending = 0;
	}
}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


//Toget email
try
{
	String sql = "SELECT * FROM users WHERE userid='"+uid+"'";
Connection con = DB.getcon();
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
if(rs.next()){
	email = rs.getString("Email");
}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}



%>
 
<%

String nn="provided";

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="sowndharyariya2020@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="Sowndharya@123"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email; // out going email id

String from ="sowndharyariya2021@gmail.com"; //Email id of the recipient

String subject ="TAX DUE INTIMATION";

String messageText ="Your Pending Dues Rs."+pending+"/-. To Avoid Penalties Submit the Required proofs for the Deductions(Insurance,Rent,Loan)";

//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
props.setProperty("mail.user", "myuser");
props.setProperty("mail.password", "mypwd");
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
BodyPart messageBodyPart = new MimeBodyPart();

// Fill the message
messageBodyPart.setText(messageText);
Multipart multipart = new MimeMultipart();

// Set text message part
multipart.addBodyPart(messageBodyPart);

// Part two is attachment
messageBodyPart = new MimeBodyPart();

//String filename = fpath;
//DataSource source = new FileDataSource(filename);
//messageBodyPart.setDataHandler(new DataHandler(source));
//messageBodyPart.setFileName(filename);
//multipart.addBodyPart(messageBodyPart);

// Send the complete message parts
msg.setContent(multipart );
 // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());%>
<script type="text/javascript">
    window.location="Admin.jsp";
   </script>
<%
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();
/* 
String sta="Confirm";
try
{
Connection conn = DB.getcon();
//PreparedStatement ps=conn.prepareStatement("update buy_share set exchangestatus='"+sta+"' where id='"+rowid+"'");
ps.executeUpdate();

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
 */%>






</body>
</html>
