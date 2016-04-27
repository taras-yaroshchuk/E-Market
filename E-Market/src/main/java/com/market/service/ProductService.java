package com.market.service;

import com.market.model.Product;
import com.market.repository.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductDao productDao;

    public List<Product> getAllProducts() {
        return productDao.getAllProducts();
    }

    public List<Product> getAllProductsInCategory(int id) {
        return productDao.getAllProductsInCategory(id);
    }

    public List<Product> getAllProductsInCategory(Product product) {
        return productDao.getAllProductsInCategory(product.getId());
    }

    @Transactional
    public Product addProduct(Product product) {
        return productDao.addProduct(product);
    }
}
