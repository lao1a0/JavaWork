<%@ page language="java" import="java.util.*" pageEncoding="gbk" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
<%
  
   String url = application.getInitParameter("url");	//��ȡ��ʼ����������web.xml�ļ������ݶ�Ӧ
   String name = application.getInitParameter("name");
   String password = application.getInitParameter("password");
   out.println("URL: "+url+"<br>");
   out.println("name: "+name+"<br>");
   out.println("password: "+password+"<br>");
%>

  </body>
</html>
