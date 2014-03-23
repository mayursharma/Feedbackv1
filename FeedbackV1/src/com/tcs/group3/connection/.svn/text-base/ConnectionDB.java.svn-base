package com.tcs.group3.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
	public static Connection getDBconnection()throws SQLException{
		Connection conn=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@172.26.132.40:1521:orcl", "p35f", "p35f");
		}
		catch(Exception e){
			
		}
		return conn;
	}
	
	public static void closeConnection(Connection conn){
		try{
			if(conn!=null)
			{
				conn.close();
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
