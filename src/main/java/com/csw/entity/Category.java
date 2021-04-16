package com.csw.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Category implements Serializable {
    /*
     * id varchar2(36) primary key not null, name varchar2(100), parent_id
     * varchar2(36), levels
     */

    private String id;
    private String name;
    private String parent_id;
    private String levels;
    private Category category;

}
