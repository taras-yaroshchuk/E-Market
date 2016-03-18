package com.market.controller;

import com.market.service.CategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

@Controller
public class HomeController {

    @Inject
    CategoryService categoryService;

    @RequestMapping({"/", "/home", "/E-Market"})
    public String printHomepage(Model model) {
        model.addAttribute("categories", categoryService.getAllCategories());
        return "home";
    }

    @RequestMapping("/*")
    public String wrongUrlHandler() {
        return "notFoundPage";
    }
}
