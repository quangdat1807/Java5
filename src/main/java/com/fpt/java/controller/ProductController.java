package com.fpt.java.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpt.java.model.Category;
import com.fpt.java.model.Product;
import com.fpt.java.model.SearchForm;
import com.fpt.java.reponsitory.CategoryRepository;
import com.fpt.java.reponsitory.HomeRepository;
import com.fpt.java.reponsitory.ProductRepository;

@Controller
@RequestMapping("product")
public class ProductController {

	// lấy danh sách category truyển cho trang insert
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	HttpServletRequest request;

	@ModelAttribute("categories")
	public List<Category> getCategories() {
		List<Category> categories = categoryRepository.findAll();
		return categories;
	}

	@Autowired
	ProductRepository productResponsitory;

	@GetMapping(path = "insert")
	public String insert(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "product/insert";
	}

	@PostMapping(path = "insert")
	public String insertComplete(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "product/insert";
		}
		productResponsitory.save(product);
		return "redirect:listProducts";
	}

	@GetMapping("list")
	public String index(@RequestParam(name = "order",
			// cài đặt giá trị mặc định để tránh lỗi
			defaultValue = "productId") String orderFeild, Model model) {
		List<Product> products = productResponsitory.findAll(
				// Direction có 2 loại
				// ASC tăng dần
				// DESC là giảm dần
				Sort.by(Direction.DESC, orderFeild));

		model.addAttribute("products", products);
		return "product/listProducts";
	}
	
	@Autowired
	HomeRepository homeResponsitory;
	
	@GetMapping("listHome")
	public String home(@RequestParam(name = "order",
			// cài đặt giá trị mặc định để tránh lỗi
			defaultValue = "productId") String orderFeild, Model model) {
		List<Product> products = homeResponsitory.findAll(
				// Direction có 2 loại
				// ASC tăng dần
				// DESC là giảm dần
				Sort.by(Direction.DESC, orderFeild));

		model.addAttribute("products", products);
		return "product/home";
	}

	// cài đặt tối đa 2 sản phẩm trên 1 trang
	private static final int TOI_DA_SAN_PHAM = 5;

	@GetMapping("page")
	public String page(
			@RequestParam(name = "pageIndex",
			defaultValue = "0") int pageIndex
			, Model model) 
	{		
		// Tạo phân trang
		Pageable pager = PageRequest.of(pageIndex, TOI_DA_SAN_PHAM);
		
		// lấy sản phẩm
		Page<Product> productPage = productResponsitory.findAll(pager);
		
		model.addAttribute("products", productPage.getContent());
		// truyền vào số lượng page tối đa
		model.addAttribute("maxPage", productPage.getTotalPages());
		
		return "product/listProducts";
	}

	@GetMapping("listProducts")
	public String search(
			// thông tin form tìm kiếm
			@ModelAttribute(name = "searchForm") SearchForm sf,
			Model model) 
	{
		
		Pageable phanTrang = PageRequest.of(sf.getTrang(),
				TOI_DA_SAN_PHAM,
				// nếu đúng thì thứ tự tăng đần ngược lại giảm dần
				sf.isThuTu() ? Direction.ASC: Direction.DESC,
				// xếp theo trường nào ví dụ id, name, price
				sf.getXepTheo());
		// lấy sản phẩm
		Page<Product> productPage =
				productResponsitory.findByNameContainingIgnoreCase(sf.getName(), phanTrang);
		
		model.addAttribute("products", productPage.getContent());
		model.addAttribute("maxPage", productPage.getTotalPages());
		
		return "product/list";
	}
	
	private static final int MaxPro = 8;
	
	@GetMapping("pageHome")
	public String pageHome(
			@RequestParam(name = "pageHome",
			defaultValue = "0") int pageHome
			, Model model) 
	{		
		// Tạo phân trang
		Pageable pager = PageRequest.of(pageHome, MaxPro);
		
		// lấy sản phẩm
		Page<Product> productPage = productResponsitory.findAll(pager);
		
		model.addAttribute("products", productPage.getContent());
		// truyền vào số lượng page tối đa
		model.addAttribute("maxPage", productPage.getTotalPages());
		
		return "product/listProducts";
	}
	
	@GetMapping("home")
	public String ListProduct(
			// thông tin form tìm kiếm
			@ModelAttribute(name = "searchForm") SearchForm sf,
			Model model) 
	{
		
		Pageable phanTrang = PageRequest.of(sf.getTrang(),
				MaxPro,
				// nếu đúng thì thứ tự tăng đần ngược lại giảm dần
				sf.isThuTu() ? Direction.ASC: Direction.DESC,
				// xếp theo trường nào ví dụ id, name, price
				sf.getXepTheo());
		// lấy sản phẩm
		Page<Product> productPage =
				homeResponsitory.findByNameContaining(sf.getName(), phanTrang);
		
		model.addAttribute("products", productPage.getContent());
		model.addAttribute("maxPage", productPage.getTotalPages());
		
		return "product/home";
	}
	

	@GetMapping("edit")
	public String index(@RequestParam(name = "cId") int cId, Model model) {
		Optional<Product> productOption = productResponsitory.findById(cId);
		if (productOption.isEmpty())
			return "redirect:list";
		model.addAttribute("product", productOption.get());
		return "product/insert";
	}

	@PostMapping("edit")
	public String index(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "product/insert";
		}

		Optional<Product> productOption = productResponsitory.findById(product.getProductId());
		if (productOption.isEmpty())
			return "redirect:list";

		Product productOld = productOption.get();
		productOld.setName(product.getName());
		productOld.setCategory(product.getCategory());
		productOld.setPrice(product.getPrice());
		productResponsitory.save(productOld);

		return "redirect:listProducts";
	}

	@GetMapping("delete")
	public String delete(@RequestParam(name = "cId") int cId) {
		Optional<Product> productOption = productResponsitory.findById(cId);
		if (productOption.isEmpty())
			return "redirect:list";
		productResponsitory.delete(productOption.get());
		return "redirect:listProducts";
	}

}
