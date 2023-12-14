<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>JSP的include动作标签</title>
</head>
<body>
	<form action="" method="post">
		<table align="center">
			<tr>
				<td align="center" colspan="2">
					<h3>添加用户</h3>
				</td>
			</tr>
			<tr>
				<td>姓名：</td>
				 <% String str = request.getParameter("userName");%>
				<td><input name="name" type="text" value="<%=str%>"></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><input name="sex" type="radio" value="男" checked="checked">
					<input name="sex" type="radio" value="女"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="添加">
					<input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>
