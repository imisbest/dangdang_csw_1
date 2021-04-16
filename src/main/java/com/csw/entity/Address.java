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
public class Address implements Serializable {
    private String id;
    private User user;
    private String name;
    private String local;
    private String zip_code;
    private String phone;


}
