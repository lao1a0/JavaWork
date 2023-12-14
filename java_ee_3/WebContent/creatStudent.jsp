<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head><title>创建学生成绩表</title></head>
<body>
<%
    Connection connection = null;
    Statement stmt = null;
    final String url ="jdbc:sqlserver://localhost:1433;DatabaseName=STUDENT"; 
    final String username = "sa"; //访问数据库的用户名
    final String password = "rxy"; //访问数据库的密码
    try {
       
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        connection = DriverManager.getConnection(url, username, password);
        stmt = connection.createStatement();
        stmt.executeUpdate("CREATE TABLE SCORE ( "
               + "ID bigint NOT NULL ,"
               + "NAME varchar(20) NOT NULL,"
               + "SEX bit,BIRTHDAY datetime," + "C_SCORE int,"
               + "DS_SCORE int," + "ENGLISH_SCORE int,"
               + "PRIMARY KEY (ID))");
             }
        catch(SQLException e)
        {
        	e.printStackTrace();
        }
        finally {
              if(stmt!=null){ stmt.close(); }
              if(connection!=null){connection.close(); }
	         }
       out.println("Success!");
%>
</body>
</html>