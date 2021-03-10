package com.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProImpl implements ProDao{
 
	 Connection con;
	 PreparedStatement ps;
	 List<ProductPojo> list;
	 ProductPojo pd;
	@Override
	public boolean Add(ProductPojo pro) {
		// TODO Auto-generated method stub
		boolean  flag=false;
		
		try {			
			con=ConnectionProvider.getConnection(); 
			
		int Id=pro.getId();
		String name=pro.getName();
		String description=pro.getDescription();
		int category=pro.getCategoryId();
		int price=pro.getPrice();
		int quantity=pro.getQuantity();
		String img=pro.getImg();
		
		PreparedStatement ps= con.prepareStatement("INSERT INTO PRODUCT VALUES(?,?,?,?,?,?,?)");
		
		ps.setInt(1,Id);
		ps.setString(2,name);
		ps.setString(3,description);
		ps.setInt(4,category);
		ps.setInt(5,price);
		ps.setInt(6,quantity);
		ps.setString(7,img);
		
		 int b=ps.executeUpdate();
		
		if(b>0)
		{
			flag=true;
		}											
		}
		 catch(Exception e) {
			 
			 e.printStackTrace();
		 }
				
		
		
		
		return flag;
	}
	@Override
	public List<ProductPojo> getAll() {
		// TODO Auto-generated method stub
		try {
		con=ConnectionProvider.getConnection();
		
	    list = new ArrayList<ProductPojo>();
		PreparedStatement ps=con.prepareStatement("Select * From Product");
		ResultSet rset=ps.executeQuery();
		while(rset.next())
		{  
			ProductPojo pj= new ProductPojo();
			System.out.println(rset.getRow());
			pj.setId(rset.getInt(1));
			pj.setName(rset.getString(2));
			pj.setDescription(rset.getString(3));
			pj.setQuantity(rset.getInt(6));
			pj.setPrice(rset.getInt(5));
			pj.setImg(rset.getString(7));
			list.add(pj);
		}	 
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}				
		
		return list;
	}
	@Override
	public int Delete(int id) {
		
		int s=0;
		
		try {
			con=ConnectionProvider.getConnection();
		    PreparedStatement ps = con.prepareStatement("delete from product where id=?");
			ps.setInt(1, id);
			s=ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}								
		return s;
	}
	@Override
	public int Update(ProductPojo pro1) {
		// TODO Auto-generated method stub
		
		int i=0;
		
		try {
						
			con=ConnectionProvider.getConnection();
			PreparedStatement ps= con.prepareStatement("Update product set Name=?, Description=?, Category_id=?, Price=?, Quantity=?, Images=?  where Id=?");
		
			ps.setString(1,pro1.getName());
			ps.setString(2,pro1.getDescription());
			ps.setInt(3,pro1.getCategoryId());
			ps.setInt(4,pro1.getPrice());
			ps.setInt(5,pro1.getQuantity());
			ps.setString(6,pro1.getImg());
			ps.setInt(7,pro1.getId());
			
			i=ps.executeUpdate();
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
				
		return i;
	}
	@Override
	public ProductPojo GetProductbyId(int id) {
		// TODO Auto-generated method stub
				
		try {
			con=ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from product where id=?");
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				
			
			pd=new ProductPojo();
			pd.setId(rs.getInt(1));
			pd.setName(rs.getString(2));
			pd.setDescription(rs.getString(3));
			pd.setCategoryId(rs.getInt(4));
			pd.setPrice(rs.getInt(5));
			pd.setQuantity(rs.getInt(6));
			pd.setImg(rs.getString(7));
			}	
		}
		catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
		return pd;
	}
	@Override
	public List<ProductPojo> getProducts(int categoryId) {
		try
		
		{
			System.out.println( categoryId);
			con=ConnectionProvider.getConnection();
		    list	  = new ArrayList<ProductPojo>();
			PreparedStatement ps = con.prepareStatement("select * from product where category_id=?");
            ProductPojo product = new ProductPojo();
			ps.setInt(1, categoryId);
			
			ResultSet resultSet		  = ps.executeQuery();
		
			while(resultSet.next())
			{
				product=new ProductPojo();
				product.setId(resultSet.getInt(1));
				product.setName(resultSet.getString(2));
				product.setPrice(resultSet.getInt(5));
				product.setDescription(resultSet.getString(3));
			
				product.setImg(resultSet.getString(7));
				list.add(product);
			}
		}
		
		catch(Exception e)
		{
			System.out.println("---------------- EXCEPTION FROM PRODUCTDAOIMPL GETALLPRODUCTS()() --------------");
			e.printStackTrace();
		}
		
		finally
		{
			try
			{
				con.close();
			}
			
			catch(Exception e)
			{
				System.out.println("---------------- EXCEPTION FROM PRODUCTDAOIMPL GETALLPRODUCTS() CONNECTION CLOSING --------------");
				e.printStackTrace();
			}
		}
		
		return list;

	}
		}
