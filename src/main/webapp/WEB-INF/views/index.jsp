<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>java-mail-api</title>
	</head>
	<body>
		<h2>JavaMail API Implementation</h2><br>
		
		<h3>Project Environment:</h3>
		<ol style="line-height: 200%">
			<li>Java JDK 1.8</li>
			<li>Apache Maven 3.3.1</li>
			<li>Spring Framework 4.1.6</li>
			<li>JavaMail API  1.4.7</li>
			<li>Apache Tomcat 8</li>
			<li>Eclipse Luna 4.4</li>
			<li>Log4j 1.2.17</li>
			<li>SLF4J 1.7.12</li>
		</ol><br>
			
		<h2>Send Email:</h2>
		<form:form method="POST" commandName="commandSendEmail" action="sendEmail">
   			From: <form:input  path="from"/> <br/>
   			To: <form:input  path="to"/> <br/>
   			Subject: <form:input path="subject"/><br/>
   			Message: <form:input path="message"/><br/>
   			<input type="submit" value="Send"> 
  		</form:form>
	</body>
</html>