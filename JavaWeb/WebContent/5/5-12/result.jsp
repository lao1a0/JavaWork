<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>显示</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body style="text-align: center;margin: 0px auto">
	<%
		request.setCharacterEncoding("utf-8");
		String name = (String) session.getAttribute("name"); //获取保存在session范围内的对象
		String solution = request.getParameter("address"); //获取用户输入的最想去的地方
	%>
	<form id="form1" name="form1" method="post" action="">
		<table width="400px;" border="0">
			<tr>
				<td colspan="2"><div align="center">
						<strong>显示答案</strong>
					</div></td>
			</tr>
			<tr>
				<td width="49%"><div style="text-align: left">您的名字是：</div></td>
				<td width="51%">
					<div style="text-align: left"><%=name%></div> <!-- 将用户输入的用户名在页面中显示 -->
				</td>
			</tr>
			<tr>
				<td>
					<div style="text-align: left">您最喜欢去的地方是：</div>
				</td>
				<td><div style="text-align: left"><%=solution%></div></td>
			</tr>
		</table>
	</form>
	<p>&nbsp;</p>
</body>
</html>
