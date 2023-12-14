<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head><title>查询学生成绩</title></head>
<body>
<%
         Connection connection = null;
         Statement stmt = null;
         ResultSet rs = null;
         final String url = "jdbc:sqlserver://localhost:1433;databaseName=STUDENT"; 
         final String username = "sa"; //访问数据库的用户名
         final String password = "rxy"; //访问数据库的密码
         
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	connection = DriverManager.getConnection(url, username, password);
	stmt = connection.createStatement();
	rs = stmt.executeQuery("select ID, NAME, C_SCORE, DS_SCORE, ENGLISH_SCORE from score");
       
%>
<table>
          <tr>
	<td>ID</td><td>NAME</td>
	<td>C</td><td>Data Structure</td><td>English</td>
         </tr>
         <% while(rs.next()) { %>
  <tr>
	<td><%=rs.getInt(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getInt(3)%></td>
	<td><%=rs.getInt(4)%></td>
	<td><%=rs.getInt(5)%></td>
   </tr>
         <% } %>
</table>

    <% rs.close(); 
       stmt.close(); 
       connection.close();
    %>

</body>
</html> 