package org.student.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.student.entity.Student;

public class StudentDao {
	private static final String URL="jdbc:mysql://localhost:3306/user";
	private static final String USERNAME = "root";
	private static final String PWD="";
	
	public boolean isExist(int sno)
	{
		return queryStudentBySno(sno)==null ? false:true;
	}
	public boolean addStudent(Student student)
	{
		Connection connection=null;
		PreparedStatement pstmt=null;
		int rs=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL,USERNAME,PWD);
			String sql="insert into student values(?,?,?,?)";			
			pstmt= connection.prepareStatement(sql);
			pstmt.setInt(1, student.getSno());
			pstmt.setString(2, student.getSname());
			pstmt.setInt(3, student.getSage());
			pstmt.setString(4, student.getSaddress());
			rs=pstmt.executeUpdate();
			if(rs>0)
				return true;
			else 
				return false;
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			return false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
			
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(connection!=null) connection.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	//根据学号查学生
	public Student queryStudentBySno(int sno)
	{
		Student student=null;
		Connection connection=null;
		PreparedStatement pstmt=null;
		ResultSet rs =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL,USERNAME,PWD);
			String sql="select * from student where sno=?";			
			pstmt= connection.prepareStatement(sql);
			pstmt.setInt(1, sno);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				int no=rs.getInt("sno");
				String name=rs.getString("sname");
				int age=rs.getInt("sage");
				String address=rs.getString("saddress");
				student=new Student(no,name,age,address);
			}
			return student;
			
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(connection!=null) connection.close();
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}		
	}
}
