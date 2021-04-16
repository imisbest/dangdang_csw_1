package com.csw.test;

import com.csw.entity.Category;
import com.csw.service.CategoryService;
import com.csw.service.CategoryServiceImpl;
import org.junit.Test;

import java.util.List;

public class CategoryTest {
    CategoryService cate = new CategoryServiceImpl();

    public void testqueryParent_id() {
        List<Category> list = cate
                .queryParent_id("e3a61c36-ab29-4e92-aeeb-dd67a48d38d1");
        System.out.println(list);
    }

    @Test
    public void queryfirstAndSecond() {
        List<Category> list = cate.queryfirstAndSecond("1");
        for (Category category : list) {
            System.out.println(category);
        }
    }

    @Test
    public void testQueryAll() {
        List<Category> lists = cate.queryAll();
        System.out.println(lists);
    }

    @Test
    public void testQueryByparentid() {
        Category category = cate.queryByparentid("小说", "1");
        System.out.println(category);
    }

    @Test
    public void testQueryAllCategory() {
        List<Category> lists = cate.queryAllCategory("1");
        System.out.println(lists);

    }

    @Test
    public void testInsert() {
        cate.insert(new Category("1", "1", "null", "1", new Category()));
    }

    @Test
    public void testDeleteBy() {
        cate.deleteBy("1");
    }

}
