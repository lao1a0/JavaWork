package org;
import java.sql.*;
public class DBConnection {
    /*
     * 该JavaBean将数据库连接操作和关闭操作封装起来，
     * 在以后的数据库操作中可以直接调用这个JavaBean的方法。
     * **/
	private String driverStr = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String URL="jdbc:sqlserver://localhost:1433;DatabaseName=STUDENT";
	private String USERNAME = "sa";
	private String PWD="rxy";
	private Connection conn = null;


	public Connection getDBconnection()
	{
		try {
			Class.forName(driverStr);
			conn = DriverManager.getConnection(URL, USERNAME,PWD);
		} 
		catch (Exception ex) 
		{
				System.out.println("数据库连接失败! ");
		}
		return conn;
	}
	public void closeDB(Connection con,Statement pstm, ResultSet rs) {
		try
		{
			if(pstm!=null)	pstm.close();
			if(con!=null)	con.close();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
