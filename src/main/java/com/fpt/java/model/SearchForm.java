package com.fpt.java.model;

public class SearchForm {
	private String name;
	private int trang;
	private String xepTheo;
	private boolean thuTu;

	public SearchForm(String ten, int trang, String xepTheo, boolean thuTu, String name) {
		super();
		this.name = name;
		this.trang = trang;
		this.xepTheo = xepTheo;
		this.thuTu = thuTu;
	}

	public SearchForm() {
		super();
		// TODO Auto-generated constructor stub
		this.name = "";
		this.trang = 0;
		this.xepTheo = "productId";
		this.thuTu = true;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTrang() {
		return trang;
	}

	public void setTrang(int trang) {
		this.trang = trang;
	}

	public String getXepTheo() {
		return xepTheo;
	}

	public void setXepTheo(String xepTheo) {
		this.xepTheo = xepTheo;
	}

	public boolean isThuTu() {
		return thuTu;
	}

	public void setThuTu(boolean thuTu) {
		this.thuTu = thuTu;
	}

}
