package 测试;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcdPrepareStatementDemo {
	private static final String URL="jdbc:mysql://localhost:3306/test";
	private static final String USERNAME = "root";
	private static final String PWD="";
	
	public static void update() {

		Connection connection = null;
		PreparedStatement pStmt=null;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connection = DriverManager.getConnection(URL, USERNAME, PWD);
//			//Statement
			// 发送sql，执行
//			stmt = connextion.createStatement();
//			// 执行增删改
//			String sql = "insert into user values(5,'rxy','男',16)";
//			int count = stmt.executeUpdate(sql);// 返回值表示增删改了几条数据
//			System.out.println(count);
			//PrepareStatement
			String sql = "insert into user values(?,?,?,?)";
			pStmt = connection.prepareStatement(sql);//预编译
			pStmt.setInt(1,15);
			pStmt.setString(2,"reeeeeee");//下标,值
			pStmt.setString(3,"man");
			pStmt.setInt(4,15);

			int count = pStmt.executeUpdate();
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
				if(pStmt!=null)	pStmt.close();
				if(connection!=null)	connection.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	}
	public static void query() {

		PreparedStatement pStmt=null;
		Connection connextion = null;
		ResultSet re=null;
		try {
			// 导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");// 加载驱动类
			// 与数据库建立连接
			connextion = DriverManager.getConnection(URL, USERNAME, PWD);
			// 发送sql，执行
			String sql = "select id,name,sex,age from user where name like ?";
			pStmt = connextion.prepareStatement(sql);
			pStmt.setString(1, "%r%");
			// 执行查询
			re = pStmt.executeQuery();// 返回值表示增删改了几条数据
			
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
				if(pStmt!=null)	pStmt.close();
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
