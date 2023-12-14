<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>存储session</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body style="text-align:center">
	<%
  		String sessionMessage = "session练习";
  		session.setAttribute("message",sessionMessage);
  		out.print("保存在session范围内的对象为："+sessionMessage);
  	%>
  	<br/>
  	<br/>
  	<a href="5-11-2.jsp">读取session的页面</a>
</body>
</html>
