package com.example;
import com.example.UserPojo;
public interface DAO {

	public boolean add(UserPojo userpojo) ;
	
	public boolean login(UserPojo pojo);
	
	public int update(UserPojo pojo );
	
	public int Delete(String Uname);

}
