<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.Student_table,java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="2" cellspacing="" cellpadding="">
	<tr><th>学生学号</th><th>学生名字 </th><th>性别 </th><th>年龄 </th><th>体重 </th><th>身高</th><th>血型</th></tr>
	<%
	ArrayList<Student_table> list = (ArrayList<Student_table>) request.getAttribute("list"); 
	
	for (Student_table bi : list)
	{
		out.print("<tr><td>"+bi.getId()+"</td>"+
				"<td>"+bi.getName()+"</td>"+
				"<td>"+bi.getSex()+"</td>"+
				"<td>"+bi.getAge()+"</td>"+
				"<td>"+bi.getWeight()+"</td>"+
				"<td>"+bi.getHight()+"</td>"+
				"<td>"+bi.getBlood()+"</td></tr>"
		);
	}
	%>
	<a href="return.rxy">返回</a>
</table>
</body>
</html>