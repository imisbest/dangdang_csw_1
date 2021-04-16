package com.csw.controller;

import com.csw.entity.Book;
import com.csw.entity.Category;
import com.csw.service.BookService;
import com.csw.service.BookServiceImpl;
import com.csw.service.CategoryService;
import com.csw.service.CategoryServiceImpl;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class BookAction {
    BookService bs = new BookServiceImpl();
    CategoryService cs = new CategoryServiceImpl();
    private List<Book> lists;
    private Book book;
    private String key;
    private String content;
    private String id;
    private List<Category> cate;
    private File cover;
    private String coverFileName;
    private String coverContentType;

    public File getCover() {
        return cover;
    }

    public void setCover(File cover) {
        this.cover = cover;
    }

    public String getCoverFileName() {
        return coverFileName;
    }

    public void setCoverFileName(String coverFileName) {
        this.coverFileName = coverFileName;
    }

    public String getCoverContentType() {
        return coverContentType;
    }

    public void setCoverContentType(String coverContentType) {
        this.coverContentType = coverContentType;
    }

    public List<Category> getCate() {
        return cate;
    }

    public void setCate(List<Category> cate) {
        this.cate = cate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public List<Book> getLists() {
        return lists;
    }

    public void setLists(List<Book> lists) {
        this.lists = lists;
    }

    // /////houtai后台/////////////////////////////////////////////////////////////////////////////////
    // 展示所有图书信息
    public String queryAllBook() {
        lists = bs.queryAllBook();
        return "show";
    }

    // 模糊查询
    public String queryLike() {
        lists = bs.queryLike(key, content);
        return "show";

    }

    // 修改
    public String queryAllConnection() {
        cate = cs.queryAllCategory("2");
        book = bs.queryBybookId(id);
        System.out.println(book);
        return "update";
    }

    // 更新图书
    public String updateAction() throws IOException {
        System.out.println("cover:" + cover);
        if (cover == null) {
            return "queryAllBook";
        }

        String path = ServletActionContext.getServletContext().getRealPath(
                "/back/img");
        FileUtils.copyFile(cover, new File(path + "//" + coverFileName));
        book.setCover(coverFileName);
        book.setId(id);
        System.out.println(book);
        try {
            bs.updateAction(book, cover);
        } catch (Exception e) {
            // TODO: handle exception
            return "addAction";
        }

        return "queryAllBook";

    }

    // 添加图书,点击
    public String addAction() {

        cate = cs.queryAllCategory("2");
        return "add";

    }

    // 添加图书
    public String addInsert() throws Exception {
        System.out.println("cover:" + cover);
        if (cover == null) {
            return "addAction";
        }
        System.out.println(book);

        String path = ServletActionContext.getServletContext().getRealPath(
                "/back/img");
        FileUtils.copyFile(cover, new File(path + "//" + coverFileName));
        book.setCover(coverFileName);
        book.setId(UUID.randomUUID() + "");
        book.setCreate_date(new Date());
        book.setSale("0");
        try {
            bs.addInsert(book);
        } catch (Exception e) {
            // TODO: handle exception
            return "addAction";
        }

        return "queryAllBook";

    }

    // 删除图书
    public String deleteAction() {
        try {
            bs.deleteAction(id);
        } catch (Exception e) {
            // TODO: handle exception
            return "queryAllBook";
        }
        return "queryAllBook";

    }
}
