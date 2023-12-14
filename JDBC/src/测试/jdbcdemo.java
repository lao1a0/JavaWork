package 测试;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcdemo {
	private static final String URL="jdbc:mysql://localhost:3306/test";
	private static final String USERNAME = "root";
	private static final String PWD="";
	
	public static void update() {

		Statement stmt = null;
		Connection connextion = null;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connextion = DriverManager.getConnection(URL, USERNAME, PWD);
			// 发送sql，执行
			stmt = connextion.createStatement();
			// 执行增删改
			String sql = "insert into user values(5,'rxy','男',16)";
			int count = stmt.executeUpdate(sql);// 返回值表示增删改了几条数据
			System.out.println(count);
			// 处理结果
			if (count > 0) {
				System.out.println("操作成功！");
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
				if(stmt!=null)	stmt.close();
				if(connextion!=null)	connextion.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	}
	public static void query() {

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
			String sql = "select id,name,sex,age from user";
			re = stmt.executeQuery(sql);// 返回值表示增删改了几条数据
			// 处理结果
			while(re.next())
			{
//				int age=re.getInt("age");
//				String name=re.getString("name");
				//查询结果从1开始
				int age=re.getInt(1);
				String name=re.getString(2);
				System.out.println(age+"--"+name);
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
		
	}
	public static void main(String[] args){
		//update();
		query();
	}
	
}
