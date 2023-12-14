<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.Student_table" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="modify__.rxy" method="post">
			<% 
				if(request.getAttribute("bi")!=null)
				{
					Student_table bi = (Student_table)request.getAttribute("bi");
				%>
				<input type="text" name="id" hidden="true" value="<%=bi.getId() %>"/></br>
				<input type="text" name="name" value="<%=bi.getName() %>"/></br>
				<input type="text" name="sex" value="<%=bi.getSex() %>"/></br>
				<input type="text" name="age" value="<%=bi.getAge() %>"/></br>
				<input type="text" name="weight" value="<%=bi.getWeight() %>"/></br>
				<input type="text" name="hight" value="<%=bi.getHight() %>"/></br>
				<input type="text" name="blood" value="<%=bi.getBlood() %>"/></br>
				<input type="submit" value="提交修改"/>
			<% }
			else
			{
				%>
				<a href="return.rxy">操作错误，返回吧</a>
				<% 
			}
			 %>
	</form>
		
</body>
</html>