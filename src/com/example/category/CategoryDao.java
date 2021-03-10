package com.example.category;

import java.util.List;

public interface CategoryDao {
	
	public boolean Add(CategoryPojo pojo);
	public List<CategoryPojo> getAll();
	public int Delete(int categoryid);
   
    
}
