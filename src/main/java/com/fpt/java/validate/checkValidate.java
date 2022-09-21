package com.fpt.java.validate;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.fpt.java.model.Category;
import com.fpt.java.reponsitory.CategoryRepository;


public class checkValidate implements ConstraintValidator<checkID, Category> {
	@Autowired
	CategoryRepository categoriesResponsitory;

	@Override
	public boolean isValid(Category category, ConstraintValidatorContext context) {
		if (categoriesResponsitory == null) return true;
		if (categoriesResponsitory.findById(category.getCategoryId()).isEmpty()) {
			return false;
		}
		return true;
	}
}