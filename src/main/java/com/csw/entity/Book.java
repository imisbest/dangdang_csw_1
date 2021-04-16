package com.csw.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Book implements Serializable {
    private String id;
    private String name;
    private String author;
    private String cover;
    private String press;
    private Date press_date;
    private String edition;
    private Date print_date;
    private String impression;
    private String isbn;
    private Integer word_num;
    private String page_num;
    private String sizes;
    private String paper;
    private String pack;
    private Integer price;
    private Integer dprice;
    private Date create_date;
    private String editor_recommend;
    private String content_abstract;
    private String author_abstract;
    private String director;
    private String media_commentary;
    private Category category;
    private String sale;
    private Integer stock;

}
