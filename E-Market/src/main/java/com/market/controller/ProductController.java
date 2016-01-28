package com.market.controller;

import com.market.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public String showProducts(Model model) {
        model.addAttribute("productList", productService.getAllProducts());
        return "products";
    }

}
