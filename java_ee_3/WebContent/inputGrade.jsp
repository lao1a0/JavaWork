<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head><title>插入学生成绩</title></head>
<body>
<%
    Connection connection = null;
    Statement stmt = null;
        final String url = "jdbc:sqlserver://localhost:1433;databaseName=STUDENT";	
        final String username = "sa"; //访问数据库的用户名
        final String password = "rxy"; //访问数据库的密码
        try {
        	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	connection = DriverManager.getConnection(url, username, password);
	stmt = connection.createStatement();
	stmt.addBatch("INSERT INTO SCORE (ID, NAME, SEX, BIRTHDAY, C_SCORE, DS_SCORE, ENGLISH_SCORE) VALUES(1,'TOM',1,'12/01/1980',90,80,90)");
	stmt.addBatch("INSERT INTO SCORE (ID, NAME, SEX, BIRTHDAY, C_SCORE, DS_SCORE, ENGLISH_SCORE) VALUES(2,'Jerry',1,'4/10/1980',100,90,90)");
	stmt.addBatch("INSERT INTO SCORE (ID, NAME, SEX, BIRTHDAY, C_SCORE, DS_SCORE, ENGLISH_SCORE) VALUES(3,'Marry',0,'6/02/1979',50,60,50)");
	
	stmt.executeBatch();
         }
         catch(SQLException e)
             {e.printStackTrace();}
             finally {
              if(stmt!=null){ stmt.close(); }
              if(connection!=null){connection.close(); }
	         }
         
         out.println("Success!");
%>
</body>
</html>