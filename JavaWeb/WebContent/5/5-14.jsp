<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html>
<head>
<title>访问量统计</title>
</head>
<body>
	<%
		//使用application记录总访问次数
		Integer TotalHitsCount = (Integer) application.getAttribute("TotalhitCounter");
		if (TotalHitsCount == null || TotalHitsCount == 0) {
			/* 第一次访问 */
			TotalHitsCount = 1;
		} else {
			/* 返回访问值 */
			TotalHitsCount += 1;
		}
		application.setAttribute("TotalhitCounter", TotalHitsCount);
		
		//使用session记录单个用户访问次数
		Integer SingleHitsCount = (Integer) session.getAttribute("SingleHitsCount");
		if (SingleHitsCount == null || SingleHitsCount == 0) {
			/* 第一次访问 */
			SingleHitsCount = 1;
		} else {
			/* 返回访问值 */
			SingleHitsCount += 1;
		}
		session.setAttribute("SingleHitsCount", SingleHitsCount);
	%>
	<p>
		本页面总访问次数为:
		<%=TotalHitsCount%></p>
	<p>
		当前用户访问次数为:
		<%=SingleHitsCount%></p>
</body>
</html>