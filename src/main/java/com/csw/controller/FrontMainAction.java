package com.csw.controller;

import com.csw.entity.Book;
import com.csw.entity.Category;
import com.csw.service.BookService;
import com.csw.service.BookServiceImpl;
import com.csw.service.CategoryService;
import com.csw.service.CategoryServiceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class FrontMainAction {

    CategoryService cs = new CategoryServiceImpl();
    BookService bs = new BookServiceImpl();
    private List<Category> firstCategory;
    private List<Category> firstAndSecond;
    private String levels;
    private List<Book> recommened;
    private List<Book> hotbook;
    private List<Book> newbook;
    private List<Book> hotBoard;
    private String id;
    private Book book;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List<Book> getHotbook() {
        return hotbook;
    }

    public void setHotbook(List<Book> hotbook) {
        this.hotbook = hotbook;
    }

    public List<Book> getNewbook() {
        return newbook;
    }

    public void setNewbook(List<Book> newbook) {
        this.newbook = newbook;
    }

    public List<Book> getHotBoard() {
        return hotBoard;
    }

    public void setHotBoard(List<Book> hotBoard) {
        this.hotBoard = hotBoard;
    }

    public List<Book> getRecommened() {
        return recommened;
    }

    public void setRecommened(List<Book> recommened) {
        this.recommened = recommened;
    }

    public String getLevels() {
        return levels;
    }

    public void setLevels(String levels) {
        this.levels = levels;
    }

    public List<Category> getFirstAndSecond() {
        return firstAndSecond;
    }

    public void setFirstAndSecond(List<Category> firstAndSecond) {
        this.firstAndSecond = firstAndSecond;
    }

    public List<Category> getFirstCategory() {
        return firstCategory;
    }

    public void setFirstCategory(List<Category> firstCategory) {
        this.firstCategory = firstCategory;
    }

    public String showAllInformation() {

        firstCategory = cs.queryAllCategory("1");
        firstAndSecond = cs.queryfirstAndSecond("1");
        List<Book> list1 = bs.queryAllBook();
        Integer a = new Random().nextInt(list1.size());
        Integer b = new Random().nextInt(list1.size());
        while (true) {
            if (a == b) {
                b = new Random().nextInt(list1.size());
            } else {
                break;
            }
        }
        List<Book> books = new ArrayList<Book>();
        books.add(list1.get(a));
        books.add(list1.get(b));
        recommened = books;
        // ///////////////////////////////////////

        hotbook = bs.query("1", null);
        newbook = bs.query(null, "1");
        hotBoard = bs.query("1", "1");
        return "main";
    }

    public String detailAction() {
        book = bs.queryBybookId(id);
        return "book_detail";

    }
}
