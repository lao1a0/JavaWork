package org;
import java.sql.*;
public class DbUtil {
	public Statement stmt = null;
	public DbUtil(Connection conn )
	{
		try {
			stmt =  conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int updateSQL(String sql) {
		int result = 0;
		try {
			result = stmt.executeUpdate(sql);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	

	public ResultSet QuerySQL(String sql) {
		ResultSet rs = null;
		try {
			rs =  stmt.executeQuery(sql);
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return rs;
	}

}
