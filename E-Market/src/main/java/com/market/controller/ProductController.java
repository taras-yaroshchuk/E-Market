package com.market.controller;

import com.market.model.Category;
import com.market.model.Product;
import com.market.service.CategoryService;
import com.market.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/products/new-product", method = RequestMethod.GET)
    public String newProduct(Model model) {
        Map<Integer, String> categoriesMap = new HashMap<>();
        List<Category> categories = categoryService.getAllCategories();
        categories.forEach(c -> categoriesMap.put(c.getId(), c.getName()));

        model.addAttribute("categories", categoriesMap);
        model.addAttribute(new Product());
        return "new-product";
    }

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public String showProducts(Model model) {
        model.addAttribute("productList", productService.getAllProducts());
        return "products";
    }

    @RequestMapping(value = "/products", method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute("product") Product product, Model model) {
        productService.addProduct(product);
        return "home";
    }

    @RequestMapping(value = "/getProducts", method = RequestMethod.GET)
    @ResponseBody
    public List<Product> getProducts() {
        return productService.getAllProducts();
    }

    @RequestMapping(value = "/getProductsByCategoryId", method = RequestMethod.GET)
    @ResponseBody
    public List<Product> getProductsBuCategoryId(@RequestParam("category_id") int category_id) {
        return productService.getAllProductsInCategory(category_id);
    }

}
