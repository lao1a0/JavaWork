<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.Student_table" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show</title>
</head>
<body>
	<table border="" cellspacing="" cellpadding="">
	<% 
		if(request.getAttribute("bi")!=null)
		{
			Student_table bi = (Student_table)request.getAttribute("bi");
		%>
		<tr><td><%=bi.getId() %></td>
				<td><%=bi.getName() %></td>
				<td><%=bi.getSex() %></td>
				<td><%=bi.getAge() %></td>
				<td><%=bi.getWeight() %></td>
				<td><%=bi.getHight() %></td>
				<td><%=bi.getBlood() %></td></tr>
		<a href="return.rxy">返回</a>
		<% }
		else
		{
			%>
			<a href="return.rxy">操作错误，返回吧</a>
			<% 
		}
		 %>
	</table>
</body>
</html>