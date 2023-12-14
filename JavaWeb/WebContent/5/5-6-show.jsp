<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Form表单接受数据</title>
  </head>
  <%request.setCharacterEncoding("UTF-8"); %>
  <body>
	<ul style="list-style:none; line-height:30px">
		<li>输入用户姓名：<%=request.getParameter("name") %></li>
	  	<li>选择性别：<%=request.getParameter("sex")%></li>
		<li>选择密码提示问题：<%=request.getParameter("question")%></li>
		<li>
			请输入问题答案：<%=request.getParameter("key")%>
		</li>
		<li>
			请选择个人爱好：
			<% 
				String[] like =request.getParameterValues("like");
				if(like != null) {
					for(int i =0;i<like.length;i++){
			%>
			<%= like[i]+"&nbsp;&nbsp;" %>
			<%
					}
				}
			%>
		</li>
	</ul>
  </body>
</html>
