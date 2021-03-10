package com.example.category;

import java.io.Serializable;
import java.util.UUID;

public class CategoryPojo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int categoryId;
	private String categoryName;
	
	
	
	
	public int getCategoryId() {
		return categoryId;
	}
	
	
	public void setCategoryId(int categoryId) {
		if(categoryId == 0)		
		{
	     this.categoryId = UUID.randomUUID().toString().substring(1, 4).hashCode();
		}
		else	
		{
			this.categoryId = categoryId;	
		}
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
	
	
}
