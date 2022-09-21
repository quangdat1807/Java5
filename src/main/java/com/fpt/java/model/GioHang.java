package com.fpt.java.model;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

@Component
@SessionScope
public class GioHang {
	private Map<Product, Integer> chiTietGioHang = new HashMap<Product, Integer>();
	
	public Map<Product, Integer> getChiTietGioHang() {
		return chiTietGioHang;
	}
	
	public void setChiTietGioHang(Map<Product, Integer> ChiTietGioHang) {
		this.chiTietGioHang = ChiTietGioHang;
	}
}
