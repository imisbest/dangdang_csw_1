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
public class Order implements Serializable {
    private String id;
    private String order_no;
    private Integer total;
    private Date create_date;
    private String status;
    private Address address;
    private User user;

}
