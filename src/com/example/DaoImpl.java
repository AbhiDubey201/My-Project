package com.example;

import java.sql.*;

import org.apache.tomcat.util.buf.B2CConverter;

import com.example.*;
public class DaoImpl implements DAO {
	Connection con;
	PreparedStatement psvm;
	@Override
	public boolean add(UserPojo userpojo)  
	{
	boolean flag=false;
		
		try {
		con=ConnectionProvider.getConnection();
	
		String uname=userpojo.getUsername();
		String pass=userpojo.getPassword();
		String email=userpojo.getEmail();
		long cno=userpojo.getNumber();
		
	PreparedStatement psvm=	con.prepareStatement("INSERT INTO CUSTOMER VALUES(?,?,?,?)");
	psvm.setString(1,uname);
	psvm.setString(2,pass);
	psvm.setString(3,email);
	psvm.setLong(4,cno);
	
	int num=psvm.executeUpdate();
		if(num>0)
		{
			flag =true;
		}	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{try
		{
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		}
		return flag;	
	}
	@Override
	public boolean login(UserPojo pojo) {
		// TODO Auto-generated method stub
		boolean b2=false;
	try {
	  con=ConnectionProvider.getConnection();
	  psvm=con.prepareStatement("select * from CUSTOMER where username=? and password=?");
	  psvm.setString(1,pojo.getUsername());
	  psvm.setString(2,pojo.getPassword());
	  ResultSet rs=psvm.executeQuery();
	 if( rs.next())
	 {
		 b2=true;
	 }
	  
	}catch(Exception e)
	
	{
		e.printStackTrace();	
		
		
	}	
		return b2;
				
	}

	
@Override
public int update(UserPojo pojo) {
	// TODO Auto-generated method stub
	
	int rs=0;
	try {
	con=ConnectionProvider.getConnection();
	psvm=con.prepareStatement("UPDATE CUSTOMER SET password=?, email=?, contact=? WHERE username=?");	
	psvm.setString(1,pojo.getPassword());
	psvm.setString(2,pojo.getEmail());
	psvm.setLong(3,pojo.getNumber());
	psvm.setString(4,pojo.getUsername());
    rs=psvm.executeUpdate();
		
	}
	
	catch(Exception e) {
		
		e.printStackTrace();				
	}
	
	return rs;
}
@Override
public int Delete(String Uname) {
	// TODO Auto-generated method stub
	int status=0;
	try {
	   con=ConnectionProvider.getConnection();
	   psvm=con.prepareStatement("DELETE FROM CUSTOMER WHERE username=?");
	   
	   psvm.setString(1, Uname);
	    status=psvm.executeUpdate();
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
		
	return status;
}

	
	
	
}
