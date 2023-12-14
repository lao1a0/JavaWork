<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Cookie举例</title>
  </head>
  
  <body>
    <% 
		String name = request.getParameter("name");
    	String birthday = request.getParameter("birthday");
    	String mail = request.getParameter("mail");
    	
    	Cookie nameCookie = new Cookie("name",name);
    	nameCookie.setMaxAge(60);
    	response.addCookie(nameCookie);
    	
    	Cookie birthdayCookie = new Cookie("birthday",birthday);
    	birthdayCookie.setMaxAge(30);
    	response.addCookie(birthdayCookie);
    	
    	Cookie mailCookie = new Cookie("mail",mail);
    	mailCookie.setMaxAge(15);
    	response.addCookie(mailCookie);
    %>
    表单提交成功
    <ul style="line-height: 24px">
    	<li>姓名：<%= name %>
    	<li>出生日期：<%= birthday %>
    	<li>电子邮箱：<%= mail %>
    	<li><a href="5-10.jsp">返回</a>
    </ul>
  </body>
</html>
