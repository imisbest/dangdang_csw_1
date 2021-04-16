package com.csw.test;

import com.csw.entity.Book;
import com.csw.service.BookService;
import com.csw.service.BookServiceImpl;
import org.junit.Test;

import java.util.List;

public class BookTest {
    BookService bs = new BookServiceImpl();

    @Test
    public void testQueryAllBook() {
        List<Book> lists = bs.queryAllBook();
        System.out.println(lists);
    }

    @Test
    public void testquery() {
        /*
         * List<Book> hotbook = bs.query("1", null);
         * System.out.println("hotBoard:" + hotbook); List<Book> newbook =
         * bs.query(null, "1"); System.out.println("newbook:" + newbook);
         */
        List<Book> hotBoard = bs.query("1", "1");
        System.out.println("hotBoard:" + hotBoard);
    }

    @Test
    public void testqueryLike() {
        System.out
                .println("name_______________________________________________");
        List<Book> lists2 = bs.queryLike("name", "上");
        for (Book book : lists2) {
            System.out.println(book);
        }
        System.out
                .println("author_______________________________________________");
        List<Book> lists1 = bs.queryLike("author", "张");
        for (Book book : lists1) {
            System.out.println(book);
        }
        System.out
                .println("press_______________________________________________");
        List<Book> lists3 = bs.queryLike("press", "百知");
        for (Book book : lists3) {
            System.out.println(book);
        }
    }

    @Test
    public void testqueryAllConnection() {
        List<Book> lists2 = bs.queryAllConnection();
        for (Book book : lists2) {
            System.out.println(book);
        }
    }

    @Test
    public void queryBybookId() {
        Book book = bs.queryBybookId("8");
        System.out.println(book);
    }

}
