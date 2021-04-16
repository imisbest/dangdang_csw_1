package com.csw.test;

import com.csw.entity.Book;
import com.csw.service.BookService;
import com.csw.service.BookServiceImpl;
import org.junit.Test;

import java.util.List;

public class MainCategoryTestBook {
    BookService bs = new BookServiceImpl();

    @Test
    public void testQueryBookByFirstCategoryId() {
        List<Book> lists = bs.queryBookByFirstCategoryId(
                "e3a61c36-ab29-4e92-aeeb-dd67a48d38d1", 1, 2, 12);
        for (Book book : lists) {
            System.out.println(book);
        }
    }

    @Test
    public void testCountByfirst() {
        Integer countPage = bs
                .countByfirst("e3a61c36-ab29-4e92-aeeb-dd67a48d38d1");
        System.out.println(countPage);
    }

    @Test
    public void testCountBySecond() {
        Integer countPage = bs
                .countBySecond("f0dbdcb6-1857-4063-8759-090265c217c6");
        System.out.println(countPage);
    }

    @Test
    public void testQueryBookBySecondCategoryId() {
        List<Book> lists = bs.queryBookBySecondCategoryId(
                "f0dbdcb6-1857-4063-8759-090265c217c6", 1, 2, 5);
        for (Book book : lists) {
            System.out.println(book);
        }
    }

}
