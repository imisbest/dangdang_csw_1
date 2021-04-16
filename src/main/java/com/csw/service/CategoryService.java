package com.csw.service;

import com.csw.entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> queryAll();

    Category queryByparentid(String name, String levels);

    List<Category> queryAllCategory(String levels);

    void insert(Category category);

    void deleteBy(String id);

    List<Category> queryParent_id(String id);

    List<Category> queryfirstAndSecond(String levels);

    List<Category> querySecondCategoryByFirstCategoryId(String id);

    Category queryCategoryId(String id1);

}
