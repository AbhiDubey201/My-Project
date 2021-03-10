package com.example;

import java.util.List;

public interface ProDao  {
	public boolean Add(ProductPojo pro); 
	public List<ProductPojo> getAll();	
	public int Delete(int id);
	public int Update(ProductPojo pro1);
	public ProductPojo GetProductbyId(int id);
	public List<ProductPojo> getProducts(int categoryId);


}
