package 测试;
//2. CallableStatement:调用 存储过程、存储函数

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

public class jdbcCallableStatement {
	private static final String URL="jdbc:mysql://localhost:3306/test";
	private static final String USERNAME = "root";
	private static final String PWD="";
	
	public static void invokeProcedure() {//存储过程

		Connection connection = null;
		PreparedStatement pStmt=null;
		CallableStatement cstmt=null;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connection = DriverManager.getConnection(URL, USERNAME, PWD);

			cstmt = connection.prepareCall("{call addTowNul(?,?,?)}");
			cstmt.setInt(1, 10);
			cstmt.setInt(2, 10);
			
			cstmt.registerOutParameter(3, Types.INTEGER);
			cstmt.execute();

			//设置输出参数的类型
			int result = cstmt.getInt(3);//获取返回值
			
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
				if(pStmt!=null)	pStmt.close();
				if(connection!=null)	connection.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	}
	public static void invokeFunction() {//存储函数

		Connection connection = null;
		PreparedStatement pStmt=null;
		CallableStatement cstmt=null;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connection = DriverManager.getConnection(URL, USERNAME, PWD);

			cstmt = connection.prepareCall("{ ?=call addTowNumfunction(?,?)}");
			cstmt.setInt(2, 10);
			cstmt.setInt(3, 10);
			
			cstmt.registerOutParameter(1, Types.INTEGER);
			cstmt.execute();

			//设置输出参数的类型
			int result = cstmt.getInt(3);//获取返回值
			
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
				if(pStmt!=null)	pStmt.close();
				if(connection!=null)	connection.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	}
	public static void main(String[] args){
		invokeProcedure();
	}
	
}
