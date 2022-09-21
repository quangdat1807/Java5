package com.fpt.java.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.fpt.java.validate.checkID;

@Entity(name = "products")
public class Product {
	@Id
	@GeneratedValue
	private int productId;
	
	@NotBlank(message="Tên không được để trống!")
	@Size(min = 3, max = 200 , message="Tên phải lớn hơn 200 và nhỏ hơn 3 ký tự!")
	private String name;
	
	@NotNull(message="Giá không được để trống!")
	@Min(value = 1000, message = "Giá không thấp hơn 1000!")
	@Max(value = 10000000, message = "Giá không cao hơn 10000000!")
	private Long price;
	
//	@Pattern (regexp = "(http(s?):)([/|.|\\w|\\s|-])*\\.(?:jpg|gif|png)", message="Sai đường dẫn!")
	private String image;
	
	@NotNull
	private Date createdDate = new Date((new java.util.Date()).getTime());
	
	private String detail;
	
	@checkID
	@ManyToOne
	@JoinColumn(
			name = "category_id",
			nullable = false,
			foreignKey = @ForeignKey(name = "category_products"))
	private Category category;

	
	
	
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Product) {
			Product cProduct = (Product)obj;
			return this.productId == cProduct.getProductId();
		}
		return false;
	}
	 
	@Override
	public int hashCode() {
		return productId;
	}
}
