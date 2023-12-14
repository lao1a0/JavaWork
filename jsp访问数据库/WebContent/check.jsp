<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %><!--  导入java包 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String URL="jdbc:mysql://localhost:3306/test";
		String USERNAME = "root";
		String PWD="";
	
		Statement stmt = null;
		Connection connextion = null;
		ResultSet re=null;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connextion = DriverManager.getConnection(URL, USERNAME, PWD);
			// 发送sql，执行
			stmt = connextion.createStatement();
			// 执行查询
			String name= request.getParameter("uname");
			String pwd = request.getParameter("upwd");
			String sql = "select id,name,sex,age from user where name='"+name+"' and id='"+pwd+"'";
			re = stmt.executeQuery(sql);// 返回值表示增删改了几条数据
			// 处理结果
			int count=-1;
			if(re.next())
			{
				count=re.getInt(1);
			}
			if(count>0)
			{
				out.print(re.getString("name"));
				out.print("登录成功");
			}
			else
			{
				out.print("登录失败");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e)
		{
			e.printStackTrace();
		}catch (Exception e)
		{
			e.printStackTrace();
		}finally 
		{
			try
			{
				if(re!=null) re.close();
				if(stmt!=null)	stmt.close();
				if(connextion!=null)	connextion.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	
	
	%>
</body>
</html>