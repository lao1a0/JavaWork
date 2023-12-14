<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>cookie举例</title>
  </head>
  <body>
  	<% 
		String welcome = "第一次访问";
  		String[] info = new String[]{"","",""};
  		Cookie[] cook = request.getCookies();
		if(cook!=null){
			welcome = "欢迎回来！<br/>您在本网站上注册的信息有：<br/>";
			for(int i=0;i<cook.length;i++){
				welcome += cook[i].getName() + ": " + cook[i].getValue() + "<br/>";
			}
		}
  	%>
  	<%=welcome %>
	<form action="5-10-show.jsp" method="post">
		<ul style="line-height: 24px;">
			<li>姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input name="name" type="text" value="<%=info[0] %>"></li>
			<li>出生日期：<input name="birthday" type="text" value="<%=info[1] %>"></li>
			<li>邮箱地址：<input name="mail" type="text" value="<%=info[2] %>"></li>
			<li><input type="submit" value="提交"></li>
		</ul>
	</form>
  </body>
</html>
