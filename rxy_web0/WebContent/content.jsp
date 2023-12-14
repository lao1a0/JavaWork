<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="zh">
<head>
<meta name="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/append.css" rel="stylesheet">
 <link rel="shortcut icon" type="image/x-icon" href="img/title.svg"/> <!--在 title 添加网站图标  -->
   
<title>给我自己看的(￣▽￣)"</title>

   
    

</head>
<body>
<h1 style="text-align:center;font-family:sj">这里是一个粗糙的板二</h1><br>

	<audio loop autoplay>
	  <source src="music/夜宴风波.mp3"  type="audio/ogg">
	您的浏览器不支持 audio 元素。
	</audio> 
 <%
 try{
	 
	 request.setCharacterEncoding("UTF-8");
   String name=request.getParameter("name");
   String email=request.getParameter("email");
   String phone=request.getParameter("phone");
   String message=request.getParameter("message"); 
   if (name.isEmpty()||email.isEmpty()||phone.isEmpty()||message.isEmpty())
   {
 	  out.println("不知道哪里出错啦，反正没收到，在输入一次趴");
   }
   else
   {
 	  out.println("Hello "+name+" 你的消息我收到了，我会很快的回你哒");
   } 
 }catch(Exception e)
 {
	 out.println("不知道哪里出错啦，反正没收到，在输入一次趴"); 
 }
  
   
 %>

</body>
</html>