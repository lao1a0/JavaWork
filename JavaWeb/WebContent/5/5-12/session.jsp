<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>地方</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name"); //获取用户填写的用户名 	
		session.setAttribute("name", name); //将用户名保存在session对象中
	%>
	<div align="center">
		<form id="form1" name="form1" method="post" action="result.jsp">
			<table width="28%" border="0">
				<tr>
					<td>您的名字是：</td>
					<td><%=name%></td>
				</tr>
				<tr>
					<td>您最喜欢去的地方是：</td>
					<td><label> <input type="text" name="address" />
					</label></td>
				</tr>
				<tr>
					<td colspan="2">
						<div style="text-align: center">
							<input type="submit" name="Submit" value="提交" />
						</div>
					</td>
				</tr>
			</table>
		</form>
		<p>&nbsp;</p>
	</div>
</body>
</html>
