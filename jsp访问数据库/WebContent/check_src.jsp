<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="LoginDao.LoginDao" %>
 <%@page import="Login_JavaBean.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	String name=request.getParameter("uname");
    String pwd=request.getParameter("upwd");
    LoginDao dao=new LoginDao();
    Login login=new Login(name,pwd);
    int result=dao.login(login);
    if(result>0)
    {
    	out.print("登录成功");
    }
    else if(result==0)
    {
    	out.print("用户名密码错误");
    }
    else
    {
    	out.print("系统异常");
    }
 
 
 %>
</body>
</html>