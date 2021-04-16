package com.csw.controller;

import com.csw.entity.Book;
import com.csw.entity.Category;
import com.csw.service.BookService;
import com.csw.service.BookServiceImpl;
import com.csw.service.CategoryService;
import com.csw.service.CategoryServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class CategoryAction {
    CategoryService cs = new CategoryServiceImpl();
    BookService bs = new BookServiceImpl();
    private String id;
    private String name;
    private String parent_id;
    private String levels;
    private Category category;
    private Category category2;
    private List<Category> lists;
    private Integer countPage;
    private Integer count1;
    private List<Integer> countbook2;
    private Integer currPage;
    private List<Category> firstLists;
    private List<Book> secondLists;
    private String id1;
    private String id2;
    private Integer asd;

    public List<Integer> getCountbook2() {
        return countbook2;
    }

    public void setCountbook2(List<Integer> countbook2) {
        this.countbook2 = countbook2;
    }

    public Integer getCount1() {
        return count1;
    }

    public void setCount1(Integer count1) {
        this.count1 = count1;
    }

    public Category getCategory2() {
        return category2;
    }

    public void setCategory2(Category category2) {
        this.category2 = category2;
    }

    public Integer getAsd() {
        return asd;
    }

    public void setAsd(Integer asd) {
        this.asd = asd;
    }

    public String getId1() {
        return id1;
    }

    public void setId1(String id1) {
        this.id1 = id1;
    }

    public String getId2() {
        return id2;
    }

    public void setId2(String id2) {
        this.id2 = id2;
    }

    public List<Category> getFirstLists() {
        return firstLists;
    }

    public void setFirstLists(List<Category> firstLists) {
        this.firstLists = firstLists;
    }

    public List<Book> getSecondLists() {
        return secondLists;
    }

    public void setSecondLists(List<Book> secondLists) {
        this.secondLists = secondLists;
    }

    public Integer getCountPage() {
        return countPage;
    }

    public void setCountPage(Integer countPage) {
        this.countPage = countPage;
    }

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public List<Category> getLists() {
        return lists;
    }

    public void setLists(List<Category> lists) {
        this.lists = lists;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParent_id() {
        return parent_id;
    }

    public void setParent_id(String parent_id) {
        this.parent_id = parent_id;
    }

    public String getLevels() {
        return levels;
    }

    public void setLevels(String levels) {
        this.levels = levels;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    ///后台类别////////////////////////////////////////////////////////////////////////////////
    //展示所有信息struts-category.xml
    public String showAction() {
        lists = cs.queryAll();
        return "show";
    }

    //删除按钮
    public String deleteAction() {
        List<Category> lists = cs.queryParent_id(id);
        if (lists.size() == 0) {
            try {
                cs.deleteBy(id);
            } catch (Exception e) {
                return "showAction";
                // TODO: handle exception
            }
        }
        return "showAction";
    }

    //一级类别查询
    public String queryCategory() {
        Category cc = cs.queryByparentid(category.getName(), "1");
        System.out.println("cc:" + cc);
        if (category.getName().equals("")) {
            return "add-first";
        }
        if (cc != null) {
            return "add-first";
        } else {
            cs.insert(new Category(UUID.randomUUID() + "", category.getName(),
                    null, "1", new Category()));
            return "showAction";
        }
    }

    //点击添加二级类别，展示所有一级类别
    public String showSecondAction() {
        lists = cs.queryAllCategory("1");
        return "add-second";

    }

    //二级类别添加
    public String secondAddAction() {
        Category cc = cs.queryByparentid(name, "2");
        if (name.equals("")) {
            return "showSecondAction";
        }
        if (cc != null) {
            return "showSecondAction";
        } else {
            cs.insert(new Category(UUID.randomUUID() + "", name, category
                    .getParent_id(), "2", new Category()));
            return "showAction";
        }
    }

    /*
     * public String pageAction() { countPage = ss.count(); if (currPage == 0) {
     * currPage = 1; } if (countPage == countPage + 1) { currPage = countPage; }
     * list = ss.queryByArray(currPage, 2, countPage); t = currPage; currPage =
     * t; return "queryStudents"; }
     */
    /////前台 ////////////////////////////////////////////////////////////////////////////////*/

    public String firstPageCategoryByid() {
        // 根据一级类别id查询他有多少图书
        countPage = bs.countByfirst(id1);
        // 一级类别有多少本
        count1 = bs.count1(id1);
        System.out.println("countPage:" + countPage);
        System.out.println("currPage:" + currPage);
        if (currPage == -1) {
            currPage = 0;
        }
        if (currPage == 0) {
            currPage = 1;
        }
        if (currPage == countPage + 1) {
            currPage = countPage;
        }
        asd = 1;

        // 根据图书的id查询一级类别的id
        System.out
                .println("IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIiid1:"
                        + id1);
        // 根据一级类别id查询一级类别及其所对应的二级类别
        firstLists = cs.querySecondCategoryByFirstCategoryId(id1);
        // 根据二级级类别id查询一级类别及其所对应的二级类别
        List<Integer> listint = new ArrayList<Integer>();
        for (Category bo : firstLists) {

            listint.add(bs.count2(bo.getId()));

        }
        countbook2 = listint;
        for (Integer integer : countbook2) {
            System.out.println(integer);
        }
        // 传名字
        category = cs.queryCategoryId(id1);
        // 根据一级类别id获取其对应的每一页的图书
        secondLists = bs
                .queryBookByFirstCategoryId(id1, currPage, 2, countPage);
        int t = currPage;
        currPage = t;
        return "book_list";
    }

    public String secondPageCategoryByid() {
        // 二级类别有多少页
        countPage = bs.countBySecond(id2);
        // 一级类别有多少本
        count1 = bs.count1(id1);
        System.out.println("countPage:" + countPage);
        if (currPage == -1) {
            currPage = 0;
        }
        if (currPage == 0) {
            currPage = 1;
        }
        if (currPage == countPage + 1) {
            currPage = countPage;
        }
        asd = 2;
        // 根据二级级类别id查询一级类别及其所对应的二级类别
        List<Integer> listint = new ArrayList<Integer>();
        firstLists = cs.querySecondCategoryByFirstCategoryId(id1);
        for (Category bo : firstLists) {

            listint.add(bs.count2(bo.getId()));

        }
        countbook2 = listint;
        for (Integer integer : countbook2) {
            System.out.println(integer);
        }
        // 传名字
        category = cs.queryCategoryId(id1);
        // 传二级名字
        category2 = cs.queryCategoryId(id2);
        // 根据二级类别id获取其对应的每一页的图书
        secondLists = bs.queryBookBySecondCategoryId(id2, currPage, 2,
                countPage);
        int t = currPage;
        currPage = t;
        return "book_list";
    }
}
