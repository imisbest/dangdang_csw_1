package com.csw.dao;

import com.csw.entity.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryDao {
    List<Category> queryAll();

    Category queryByparentid(@Param("name") String name,
                             @Param("levels") String levels);

    List<Category> queryParent_id(String id);

    List<Category> queryAllCategory(String levels);

    void insert(Category category);

    void deleteBy(String id);

    List<Category> queryfirstAndSecond(String levels);

    List<Category> querySecondCategoryByFirstCategoryId(String id);

    Category queryCategoryId(String id1);

}
