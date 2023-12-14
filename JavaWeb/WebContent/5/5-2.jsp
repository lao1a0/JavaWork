<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全局变量与局部变量</title>
</head>
<body>
<%! int g = 0; %>
<%
	g++;
%>
<span>全局变量g的值为：<%=g%></span>
<%
	int a = 0;
	a++;
%>
<br />
<span>局部变量a的值为：<%=a%></span>
</body>
</html>