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
public class ChooseOrder implements Serializable {
    private String cover;
    private String name;
    private Integer price;
    private Integer dprice;
    private Integer count;

}
