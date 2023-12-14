package LoginDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Login_JavaBean.Login;

public class LoginDao {
//	public int login(String name,String pwd)
	public int login(Login login)
	{	//1:登录成功 0：登录失败（用户名密码错误 ） -1：系统异常
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
			String sql = "select id,name,sex,age from user where name='"+login.getName()+"' and id='"+login.getId()+"'";
			re = stmt.executeQuery(sql);// 返回值表示增删改了几条数据
			// 处理结果
			int count=-1;
			if(re.next())
			{
				count=re.getInt(1);
			}
			return count;
		} catch (ClassNotFoundException e)
		{
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
				if(stmt!=null)	stmt.close();
				if(connextion!=null)	connextion.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	
	
	}
}
