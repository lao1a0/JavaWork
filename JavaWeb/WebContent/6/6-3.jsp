<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>字符编码过滤器测试</title>
    <style type="text/css">
    	body{
    		font-size: 12px;
    	}
    </style>
  </head>
  
  <body>
    <form action="/JavaWeb/EncodingServlet" method="post">
		<p>
			请输入你的中文名字：
			<input type="text" name="name">
			<input type="submit" value="提 交">
		</p>
	</form>
  </body>
</html>