<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>接受参数显示</title>
  </head>
  
  <body>
    id参数的值为：<%=request.getParameter("id") %><br>
    name参数的值为：<%=request.getParameter("name") %>
  </body>
</html>
