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
String pan=request.getParameter("pan");
String uid=request.getParameter("id");
String email = null;
String account1 = request.getParameter("acc");
String account = account1.substring(account1.length() - 4);
Integer i = Integer.parseInt(request.getParameter("pfa"));


double tax=0;

if(i<=250000)
	tax=0;
else if(250001<=i && i<=500000)
	tax=0.05*i;
else if(500001<=i && i<=750000)
	tax=0.1*i;
else if(750001<=i && i<=1000000)
	tax=0.15*i;
else if(750001<=i && i<=1000000)
	tax=0.15*i;
else if(1000001<=i && i<=1250000)
	tax=0.20*i;
else if(1250001<=i && i<=1500000)
	tax=0.25*i;
else
	tax=0.30*i;


double i1 = i-tax;

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

String subject ="PF REQUEST STATUS";

String messageText ="Your PF Request has beeb Received. Once the verification process completed Your PF Amount Rs."+i1+"/- reducing the Tax :Rs."+Math.round(tax)+"/-. will be added to the Registered Account No.(XXXXXX"+account+")";

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
    window.location="Admin2.jsp?st=pf1";
   </script>
<%
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();
 
String sta="Sent";
try
{
Connection conn = DB.getcon();
PreparedStatement ps=conn.prepareStatement("UPDATE pfreq status='"+sta+"' WHERE uid='"+uid+"'");
ps.executeUpdate();

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>






</body>
</html>
