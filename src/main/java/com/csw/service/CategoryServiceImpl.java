package com.csw.service;

import com.csw.dao.CategoryDao;
import com.csw.entity.Category;
import com.csw.util.MybatisUtil;

import java.util.List;

public class CategoryServiceImpl implements CategoryService {

    @Override
    public List<Category> queryAll() {
        List<Category> lists;
        try {
            CategoryDao categoryDao = MybatisUtil.getMapper(CategoryDao.class);
            lists = categoryDao.queryAll();

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new RuntimeException("查询所有失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public Category queryByparentid(String name, String levels) {
        // TODO Auto-generated method stub
        Category cate;
        try {
            CategoryDao categoryDao = MybatisUtil.getMapper(CategoryDao.class);
            cate = categoryDao.queryByparentid(name, levels);

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new RuntimeException("根据一级类别查询失败");
        } finally {
            MybatisUtil.close();
        }
        return cate;
    }

    @Override
    public List<Category> queryAllCategory(String levels) {
        // TODO Auto-generated method stub
        List<Category> lists;
        try {
            CategoryDao categoryDao = MybatisUtil.getMapper(CategoryDao.class);
            lists = categoryDao.queryAllCategory(levels);
        } catch (Exception e) {
            // TODO: handle exception

            e.printStackTrace();
            throw new RuntimeException("查询所有类别失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public void insert(Category category) {
        // TODO Auto-generated method stub
        try {
            CategoryDao categoryDao = MybatisUtil.getMapper(CategoryDao.class);
            categoryDao.insert(category);
            MybatisUtil.commit();
        } catch (Exception e) {
            // TODO: handle exception
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("插入失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public void deleteBy(String id) {
        // TODO Auto-generated method stub
        try {
            CategoryDao categoryDao = MybatisUtil.getMapper(CategoryDao.class);
            categoryDao.deleteBy(id);
            MybatisUtil.commit();
        } catch (Exception e) {
            // TODO: handle exception
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("根据id删除失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<Category> queryParent_id(String id) {
        // TODO Auto-generated method stub
        List<Category> lists;
        try {
            CategoryDao categoryDao = MybatisUtil.getMapper(CategoryDao.class);
            lists = categoryDao.queryParent_id(id);

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new RuntimeException("根据id删除失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public List<Category> queryfirstAndSecond(String levels) {
        // TODO Auto-generated method stub
        List<Category> lists;
        try {
            CategoryDao cd = MybatisUtil.getMapper(CategoryDao.class);
            lists = cd.queryfirstAndSecond(levels);

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new RuntimeException("查询所有失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public List<Category> querySecondCategoryByFirstCategoryId(String id) {
        // TODO Auto-generated method stub
        List<Category> lists;
        try {
            CategoryDao cd = MybatisUtil.getMapper(CategoryDao.class);
            lists = cd.querySecondCategoryByFirstCategoryId(id);

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new RuntimeException("查询所有失败");
        } finally {
            MybatisUtil.close();
        }
        return lists;
    }

    @Override
    public Category queryCategoryId(String id1) {
        // TODO Auto-generated method stub
        Category category;
        try {
            CategoryDao cd = MybatisUtil.getMapper(CategoryDao.class);
            category = cd.queryCategoryId(id1);

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new RuntimeException("根据id删除失败");
        } finally {
            MybatisUtil.close();
        }
        return category;
    }

}
