<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>request方法举例</title>
  </head>
  <body>
	<ul style="line-height:24px">
  		<li>客户使用的协议：<%=request.getProtocol() %>
  		<li>客户端发送请求的方法：<%=request.getMethod() %>
  		<li>客户端请求路径：<%=request.getContextPath() %>
  		<li>客户机IP地址：<%=request.getRemoteAddr() %>
  		<li>客户机名称：<%=request.getRemoteHost() %>
  		<li>客户机请求端口号：<%=request.getRemotePort() %>
  		<li>接受客户信息的页面：<%=request.getServletPath() %>
  		<li>获取报头中User-Agent值：<%=request.getHeader("user-agent") %>
  		<li>获取报头中accept值：<%=request.getHeader("accept") %>
  		<li>获取报头中Host值：<%=request.getHeader("host") %>
  		<li>获取报头中accept-encoding值：<%=request.getHeader("accept-encoding") %>
  		<li>获取URI：<%= request.getRequestURI() %>
  		<li>获取URL：<%=request.getRequestURL() %>
  	</ul>
  </body>
</html>
