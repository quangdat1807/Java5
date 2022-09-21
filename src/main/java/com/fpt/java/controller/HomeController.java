package com.fpt.java.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/*import com.fpt.java.service.MailService;
*/import com.fpt.java.controller.HomeController;
import com.fpt.java.service.GioHangService;
import com.fpt.java.service.MailService;
import com.fpt.java.model.Category;
import com.fpt.java.model.FooterInfo;

@Controller
public class HomeController {

	public static final List<Category> CATEGORIES = new ArrayList<Category>();
	static {
		CATEGORIES.add(new Category(0, "Danh mục 1"));
		CATEGORIES.add(new Category(1, "Danh mục 2"));
		CATEGORIES.add(new Category(2, "Danh mục 3"));
	}

	@GetMapping("index")
	public void index(Model model) {
		model.addAttribute("categories", CATEGORIES);
	}

	@GetMapping("/danh-muc")
	public String danhMucParam(@RequestParam(value = "categoryId") int id, Model model) {
		// tìm category với id phù hợp
		Category category = null;
		for (Category c : HomeController.CATEGORIES) {
			if (c.getCategoryId() == id) {
				category = c;
			}
		}
		// thêm vào trong attribute
		model.addAttribute("category", category);
		return "category/index";
	}

	@GetMapping("/danh-muc/{categoryId}")
	public String danhMucVariable(@PathVariable(value = "categoryId") int id, Model model) {
		// tìm category với id phù hợp
		Category category = null;
		for (Category c : HomeController.CATEGORIES) {
			if (c.getCategoryId() == id) {
				category = c;
			}
		}
		// thêm vào trong attribute
		model.addAttribute("category", category);
		return "category/index";
	}

	@Autowired
	GioHangService gioHangService;

	@GetMapping("gio-hang")
	public void gioHang(Model model) {
		model.addAttribute("gioHang", gioHangService.getGioHang());
	}

	@GetMapping("them-vao-gio/{idSanPham}")
	public String addGioHang(@PathVariable("idSanPham") int idSanPham) {
		gioHangService.themSanPham(idSanPham);
		return "redirect:/gio-hang";
	}

	@GetMapping("detail/{idSanPham}")
	public String detail(@PathVariable("idSanPham") int idSanPham) {
		gioHangService.detail(idSanPham);
		return "redirect:/detail";
	}

	@GetMapping("tru-san-pham/{idSanPham}")
	public String truSanPham(@PathVariable("idSanPham") int idSanPham) {
		gioHangService.truSanPham(idSanPham);
		return "redirect:/gio-hang";
	}

	@GetMapping("xoa-san-pham/{idSanPham}")
	public String xoaSanPham(@PathVariable("idSanPham") int idSanPham) {
		gioHangService.xoaSanPham(idSanPham);
		return "redirect:/product/home";
	}

	@GetMapping("hoan-thanh-dat-hang")
	public String hoanthanhgio() {
		return "hoanthanh";
	}

	@Autowired
	MailService mailService;

	@PostMapping("hoan-thanh")
	public String hoanthanhgio(@RequestParam("email") String email) {
		mailService.pushMail(email);
		return "redirect:/product/home";
	}

}