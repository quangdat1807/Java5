package com.fpt.java.service;

import com.fpt.java.model.GioHang;

public interface GioHangService {
	public GioHang getGioHang();
	public void themSanPham(int productId);
	public void truSanPham(int productId);
	public void xoaSanPham(int productId);
	public void detail(int productId);
}


