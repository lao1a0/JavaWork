<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>设置HTTP头</title>
  </head>
  <body>
  	<span style="text-align: center;">5秒钟后转入石家庄铁道大学主页</span>
	<%response.setHeader("refresh","5;URL='http://www.stdu.edu.cn'"); %>
  </body>
</html>
