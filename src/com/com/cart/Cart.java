package com.com.cart;

import java.io.Serializable;

import com.example.ProductPojo;

public class Cart implements Serializable {
	

	private static final long serialVersionUID = 1L;
	private ProductPojo product;
	public ProductPojo getProduct() {
		return product;
	}
	public void setProduct(ProductPojo product) {
		this.product = product;
	}
	
	
}
