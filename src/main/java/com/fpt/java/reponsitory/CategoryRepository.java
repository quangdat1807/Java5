package com.fpt.java.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fpt.java.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
	@Query(value =  "select count(p.product_id) "
			+ "from products p inner join categories c "
			+ "on p.category_id = c.category_id "
			+ "where c.name like concat('%',:name,'%')", nativeQuery = true)
	int countByCategoryContainName(@Param("name") String name);
	
	@Query(value =  "select count(p.productId) "
			+ "from products p inner join categories c "
			+ "on p.category.categoryId = c.categoryId "
			+ "where c.name like %:name%")
	int countByCategoryContainNameJPA(@Param("name") String name);
}
