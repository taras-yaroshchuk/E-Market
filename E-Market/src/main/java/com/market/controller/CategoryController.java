package com.market.controller;

import com.market.model.Category;
import com.market.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/getCategories", method = RequestMethod.GET)
    @ResponseBody
    public List<Category> getProducts() {
        return categoryService.getAllCategories();
    }

}
