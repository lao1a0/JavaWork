<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Cookie����</title>
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
    ���ύ�ɹ�
    <ul style="line-height: 24px">
    	<li>������<%= name %>
    	<li>�������ڣ�<%= birthday %>
    	<li>�������䣺<%= mail %>
    	<li><a href="5-10.jsp">����</a>
    </ul>
  </body>
</html>
