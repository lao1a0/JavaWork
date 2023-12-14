<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>转移页面</title>
	</head>
	<body>
		<jsp:forward page="5-4-addUser.jsp">
			<jsp:param name="userName" value="456"/>
		</jsp:forward>

	</body>
</html>
