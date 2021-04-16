package com.csw.dao;

import com.csw.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.io.File;
import java.util.List;

public interface BookDao {
    List<Book> queryAllBook();

    List<Book> queryLike(@Param("key") String key,
                         @Param("content") String content);

    List<Book> queryAllConnection();

    Book queryBybookId(String id);

    void updateAction(@Param("book") Book book, @Param("cover") File cover);

    void addInsert(Book book);

    void deleteAction(String id);

    List<Book> query(@Param("sale") String sale,
                     @Param("createdate") String createdate);

    List<Book> queryBookByFirstCategoryId(@Param("id") String id,
                                          @Param("firstIndex") Integer firstIndex,
                                          @Param("lastIndex") Integer lastIndex);

    Integer countByfirst(String id);

    Integer countBySecond(String id);

    List<Book> queryBookBySecondCategoryId(@Param("id2") String id2,
                                           @Param("firstIndex") Integer firstIndex,
                                           @Param("lastIndex") Integer lastIndex);

    void changeSaleStock(@Param("sale") String sale, @Param("stock") int stock, @Param("id") String id);
}
