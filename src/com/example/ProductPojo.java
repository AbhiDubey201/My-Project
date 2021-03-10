package com.example;

import java.util.UUID;

public class ProductPojo {


	private int id;
	private String name;
	private String description;
	private int categoryId;
	private int price;
	private int quantity;
	private String img;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		if(id == 0)		
		{
	     this.id = UUID.randomUUID().toString().substring(1, 4).hashCode();
		}
		else	
		{
			this.id = id;	
		}
	}
	public String getName() { 
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
