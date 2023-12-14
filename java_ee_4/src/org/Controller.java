package org;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;
import org.DBConnection;
import org.DbUtil;
import org.Student_table;

public class Controller {
	
	
	/**
	 * 列出stu_info表中的所有的数据
	 * @return
	 */
	public static ArrayList<Student_table> getList(){
		ArrayList<Student_table> Stu_list=new ArrayList<Student_table>();
		String sql="select * from stu_info";
		DBConnection jdbc=new DBConnection();
		Connection conn = jdbc.getDBconnection();
		DbUtil ut = new DbUtil(conn);
		ResultSet rs=null;
		rs=ut.QuerySQL(sql);
		
        try {
        	
			while(rs.next())
			{
				Student_table bi=new Student_table();
				bi.setId(rs.getInt("id"));
				bi.setName(rs.getString("name"));
				bi.setSex(rs.getString("sex"));
				bi.setAge(rs.getInt("age"));
				bi.setWeight(rs.getFloat("weight"));
				bi.setHight(rs.getFloat("hight"));
				bi.setBlood(rs.getString("blood"));
				Stu_list.add(bi);
			}
			 rs.close();
		} catch(SQLException e)
		{
			e.printStackTrace();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		jdbc.closeDB(conn, ut.stmt, null);
        return Stu_list;
	}
	/**
	 * 按条件删除学生模块
	 * @param sid
	 * @return
	 */
	public static int delete(int sid){
		int result=0;
		String sql=String.format("delete from stu_info where id='%d'", sid);
		DBConnection jdbc=new DBConnection();
		Connection conn = jdbc.getDBconnection();
		DbUtil ut = new DbUtil(conn);
		int rs=ut.updateSQL(sql);
		jdbc.closeDB(conn, ut.stmt, null);
		return rs;
	}

	/**
	 * 按条件查询学生模块
	 * @param sid
	 * @return
	 */
	public static Student_table searchById(int sid){
		String sql=String.format("select * from stu_info where id=%d", sid);
		DBConnection jdbc=new DBConnection();
		Connection conn = jdbc.getDBconnection();
		DbUtil ut = new DbUtil(conn);		
		ResultSet rs=ut.QuerySQL(sql); 
		
		Student_table bi=new Student_table();
        try {
			if(rs.next())
			{
				bi.setId(rs.getInt("id"));
				bi.setName(rs.getString("name"));
				bi.setSex(rs.getString("sex"));
				bi.setAge(rs.getInt("age"));
				bi.setWeight(rs.getFloat("weight"));
				bi.setHight(rs.getFloat("hight"));
				bi.setBlood(rs.getString("blood"));
			}
			
		}
        catch(SQLException e)
		{
			e.printStackTrace();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
        finally 
		{
			try {
				if(rs!=null) rs.close();
				
			}catch(SQLException e)
			{
				e.printStackTrace();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}

        jdbc.closeDB(conn, ut.stmt, null);
        return bi;
	}
	
	/**
	 * 新添加学生模块
	 * @param bi
	 * @return
	 */
	public static int add(Student_table bi){
		String sql =String.format("insert into stu_info(name,sex,age,weight,hight,blood) values('%s','%s',%d,%f,%f,'%s')",bi.getName(),bi.getSex(),bi.getAge(),bi.getWeight(),bi.getHight(),bi.getBlood()) ;
		DBConnection jdbc=new DBConnection();
		Connection conn = jdbc.getDBconnection();
		DbUtil ut = new DbUtil(conn);		
		int rs=ut.updateSQL(sql);
		jdbc.closeDB(conn, ut.stmt, null);
		return rs;
	}

	/**
	 * 按条件修改学生模块
	 * @param stu
	 * @return
	 */
	public static int modify(Student_table stu){
		
		String sql =String.format( "update stu_info set name='%s',sex='%s',age=%d,weight=%f,hight=%f,blood='%s' where id=%d",stu.getName(),stu.getSex(),stu.getAge(),stu.getWeight(),stu.getHight(),stu.getBlood(),stu.getId());
		DBConnection jdbc=new DBConnection();
		Connection conn = jdbc.getDBconnection();
		DbUtil ut = new DbUtil(conn);	
		System.out.print(sql);
		int result=ut.updateSQL(sql);
		jdbc.closeDB(conn, ut.stmt,null);
		return result;
	}
	
	

}
