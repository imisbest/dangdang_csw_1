package com.csw.service;

import com.csw.entity.Order;

import java.util.List;

public interface OrderService {

    void insertDD(Order order);

    List<Order> queryAllOrder();

    List<Order> queryByid(String orderid);

}
