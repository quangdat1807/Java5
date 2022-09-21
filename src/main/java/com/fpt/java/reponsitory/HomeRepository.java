package com.fpt.java.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.fpt.java.model.Product;

public interface HomeRepository extends JpaRepository<Product, Integer> {
	Page<Product> findByNameContaining(String name, Pageable pager);
}
