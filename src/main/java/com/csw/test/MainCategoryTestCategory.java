package com.csw.test;

import com.csw.entity.Category;
import com.csw.service.CategoryService;
import com.csw.service.CategoryServiceImpl;
import org.junit.Test;

import java.util.List;

public class MainCategoryTestCategory {
    CategoryService cs = new CategoryServiceImpl();

    @Test
    public void testQuerySecondCategoryByFirstCategoryId() {
        List<Category> list = cs
                .querySecondCategoryByFirstCategoryId("e3a61c36-ab29-4e92-aeeb-dd67a48d38d1");
        for (Category category : list) {
            System.out.println(category);
        }
    }

    @Test
    public void queryCategoryId() {
        Category category = cs
                .queryCategoryId("e3a61c36-ab29-4e92-aeeb-dd67a48d38d1");
        System.out.println(category);
    }

}
