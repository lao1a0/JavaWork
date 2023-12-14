<%@page pageEncoding="UTF-8" %>
<%@page import="java.util.Date"%>
<%
	Date now = new Date();
	String dateStr;
	dateStr = String.format("%tY年%tm月%td日", now, now, now);
%>
<%=dateStr%>