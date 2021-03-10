package com.example.category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.example.ConnectionProvider;

public class CategoryDaoImpl implements CategoryDao {
	
	 Connection con;
	 List<CategoryPojo> list2;
	@Override
	public boolean Add(CategoryPojo pojo) {
			
		try {
		con=ConnectionProvider.getConnection();
		int categoryid=pojo.getCategoryId();
		String categoryname=pojo.getCategoryName();
	
		PreparedStatement ps=con.prepareStatement("Insert into Category values(?,?)");
		
		ps.setInt(1,categoryid);
		ps.setString(2,categoryname);
		
		int i = ps.executeUpdate();			
			
		}
		catch(Exception e) {
			e.printStackTrace();
				
		}		
		
		return true;
	}
//------------------------------------------------------------------------------------------------------------------------------------------//	
	@Override
	public List<CategoryPojo> getAll() {
	 list2 = new ArrayList<CategoryPojo>();
		try {
		 
			con=ConnectionProvider.getConnection();	
			
			PreparedStatement ps =con.prepareStatement("Select * from Category");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) 
			{
				CategoryPojo categorypojo= new CategoryPojo();
				categorypojo.setCategoryId(rs.getInt(1));
				categorypojo.setCategoryName(rs.getString(2));
				list2.add(categorypojo);	
				
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		} 
	
		return list2;
	}
//--------------------------------------------------------------------------------------------------------------------------------------------//
	@Override
	public int Delete(int categoryid) {
	int i=0;
		try {
			con=ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("Delete from Category where Category_Id=?");
			ps.setInt(1, categoryid);
	   	    i= ps.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return i;
	}
	
}
