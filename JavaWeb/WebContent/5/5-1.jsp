<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>JSP的代码片段</title>
	</head>
	<body>
		<%
			long startTime = System.nanoTime();	// 记录开始时间，单位纳秒
		%>
		输出九九乘法表
		<br/>
		<%
			for (int i = 1; i <= 9; i++) { 		// 第一层循环
				out.print("<div>");
				for (int j = 1; j <= i; j++) { 	// 第二次循环
					String str = j + "*" + i + "=" + j * i;
					out.print(str + "&nbsp;"); 	// 使用空格格式化输出
				}
				out.println("</div>");			// HTML换行
			}
			long time = System.nanoTime() - startTime;
		%>
		生成九九乘法表用时
		<%
			out.println(time / 1000);			// 输出用时多少毫秒
		%>
		毫秒。
	</body>
</html>
