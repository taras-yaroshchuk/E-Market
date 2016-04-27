package com.market.util;

import com.market.model.Category;
import com.market.model.Product;
import com.market.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryUtil {
    @Autowired
    private CategoryService categoryService;

    public void writeCategoriesToFile(File file) {
        List<String> lines = new ArrayList<>();
        List<Category> categories = categoryService.getCategoriesWithProducts();
        int categoryNumber = 0;
        int productNumber = 0;
        StringBuilder row;

        for (Category category : categories) {
            categoryNumber++;
            productNumber++;
            row = new StringBuilder();
            row.append(categoryNumber)
                    .append(". ")
                    .append(category.getName());
            lines.add(row.toString());
            for (Product product : category.getProductList()) {
                row = new StringBuilder();
                row.append("| ")
                        .append(productNumber++)
                        .append(" |")
                        .append(product.getName())
                        .append(" | ")
                        .append(product.getPrice())
                        .append(" | ")
                        .append(product.getDescription());
                lines.add(row.toString());
            }
            productNumber = 0;
        }
        try {
            Files.write(file.toPath(), lines);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
