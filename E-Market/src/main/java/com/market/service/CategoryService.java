package com.market.service;

import com.market.model.Category;
import com.market.repository.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private ProductService productService;

    public List<Category> getAllCategories() {
        return categoryDao.getAllCategories();
    }

    public List<Category> getCategoriesWithProducts() {
        List<Category> categories = categoryDao.getAllCategories();
        categories.forEach(category -> category.setProductList(productService.getAllProductsInCategory(category.getId())));
        return categories;
    }
}
