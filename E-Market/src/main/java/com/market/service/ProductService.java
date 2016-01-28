package com.market.service;

import com.market.model.Product;
import com.market.repository.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductDao productDao;

    public List<Product> getAllProducts() {
        return productDao.getAllProducts();
    }

}
