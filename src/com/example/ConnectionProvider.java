package com.example;



import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionProvider 
{
	
	
	
	private static Connection connection;
	
	public static Connection getConnection()
	{
		try 
		{
						Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		}
		
		catch (Exception e) 
		{
			System.out.println("error");
			e.printStackTrace();
		}
		
	
			return connection;
		
		
	}
}
