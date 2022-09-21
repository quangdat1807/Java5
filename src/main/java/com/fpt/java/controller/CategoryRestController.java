package com.fpt.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fpt.java.model.Category;
import com.fpt.java.reponsitory.CategoryRepository;

@RestController
public class CategoryRestController {
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@GetMapping("/api/categories")
	public List<Category> list() {
		return categoryRepository.findAll();
	}
	
	@GetMapping("/api/categories/{id}")
	public Category getById(@PathVariable("id") int id) {
		return categoryRepository.findById(id).orElse(null);
	}
	
	@PostMapping("/api/categories")
	public Category insert(@RequestBody Category category) {
		return categoryRepository.save(category);
	}
	
	@PutMapping("/api/categories")
	public Category update(@RequestBody Category category) {
		return categoryRepository.save(category);
	}
	
	@DeleteMapping("/api/categories/{id}")
	public void delete(@PathVariable("id") int id) {
		categoryRepository.deleteById(id);
	}
}
