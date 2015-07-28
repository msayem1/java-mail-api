<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Java Mail</title>
	</head>
	<body>
		<h2>Mail Sent Successfully!</h2>
		From: ${param.from} <br>
		To: ${param.to} <br>
		Subject: ${param.subject} <br>
		Message: ${param.message} <br>
	</body>
</html>