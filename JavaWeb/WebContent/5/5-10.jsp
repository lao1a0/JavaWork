<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>cookie����</title>
  </head>
  <body>
  	<% 
		String welcome = "��һ�η���";
  		String[] info = new String[]{"","",""};
  		Cookie[] cook = request.getCookies();
		if(cook!=null){
			welcome = "��ӭ������<br/>���ڱ���վ��ע�����Ϣ�У�<br/>";
			for(int i=0;i<cook.length;i++){
				welcome += cook[i].getName() + ": " + cook[i].getValue() + "<br/>";
			}
		}
  	%>
  	<%=welcome %>
	<form action="5-10-show.jsp" method="post">
		<ul style="line-height: 24px;">
			<li>��&nbsp;&nbsp;&nbsp;&nbsp;����<input name="name" type="text" value="<%=info[0] %>"></li>
			<li>�������ڣ�<input name="birthday" type="text" value="<%=info[1] %>"></li>
			<li>�����ַ��<input name="mail" type="text" value="<%=info[2] %>"></li>
			<li><input type="submit" value="�ύ"></li>
		</ul>
	</form>
  </body>
</html>
