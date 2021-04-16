package com.csw.service;

import com.csw.entity.Book;

import java.io.File;
import java.util.List;

public interface BookService {
    List<Book> queryAllBook();

    List<Book> queryLike(String key, String content);

    List<Book> queryAllConnection();

    Book queryBybookId(String id);

    void updateAction(Book book, File cover);

    void addInsert(Book book);

    void deleteAction(String id);

    List<Book> query(String sale, String createdate);

    List<Book> queryBookByFirstCategoryId(String id, Integer currPage,
                                          int pageSize, Integer countPage);

    Integer countByfirst(String id);

    Integer countBySecond(String id);

    List<Book> queryBookBySecondCategoryId(String id2, Integer currPage,
                                           int pageSize, Integer countPage);

    Integer count1(String id1);

    Integer count2(String id);

    void changeSaleStock(String sale, int stock, String id);
}
