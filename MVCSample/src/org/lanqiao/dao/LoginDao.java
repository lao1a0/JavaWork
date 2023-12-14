package org.lanqiao.dao;
import java.sql.*;

import org.lanqiao.entity.Login;

import com.sun.org.apache.regexp.internal.RE;
//模型层处理登录操作
public class LoginDao {
	private static final String URL="jdbc:mysql://localhost:3306/user";
	private static final String USERNAME = "root";
	private static final String PWD="";
	
	public static int login(Login login)
	{
		Connection connection = null;
		PreparedStatement pStmt=null;
		ResultSet re=null;
		int flag=-1;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connection = DriverManager.getConnection(URL, USERNAME, PWD);
			// 发送sql，执行
			String sql = "select count(*) from client where uname=? and upassword=?";
			pStmt = connection.prepareStatement(sql);//预编译
			pStmt.setString(1,login.getUname());//下标,值
			pStmt.setString(2,login.getUpassword());
		    re=pStmt.executeQuery();
			int result=-1;
			if(re.next())
			{
				result=re.getInt(1);
			}
			if(result>0)
			{
				return 1;
			}
			else
			{
				return 0;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}catch (SQLException e)
		{
			e.printStackTrace();
			return -1;
		}catch (Exception e)
		{
			e.printStackTrace();
			return -1;
		}finally 
		{
			try
			{
				if(re!=null) re.close();
				if(pStmt!=null)	pStmt.close();
				if(connection!=null)	connection.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
				return -1;
			}catch(Exception e)
			{
				e.printStackTrace();
				return -1;
			}
		}
	}
}
