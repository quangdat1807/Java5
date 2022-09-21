package com.fpt.java.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.fpt.java.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	Page<Product> findByNameContainingIgnoreCase(String name, Pageable pager);
}
