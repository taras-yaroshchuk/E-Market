package com.market.controller;

import com.market.model.Product;
import com.market.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public String showProducts(Model model) {
        model.addAttribute("productList", productService.getAllProducts());
        return "products";
    }

    @RequestMapping(value = "/getProducts", method = RequestMethod.GET)
    public @ResponseBody
    List<Product> getProducts() {
        return productService.getAllProducts();
    }

    @RequestMapping(value = "/getProductsOfFirstCategory", method = RequestMethod.GET)
    public @ResponseBody List<Product> getProductsOfFirstCategory() {
        return productService.getAllProductsInCategory(3);
    }

}
