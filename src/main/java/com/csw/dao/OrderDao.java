package com.csw.dao;

import com.csw.entity.Order;

import java.util.List;

public interface OrderDao {

    void insertDD(Order order);

    List<Order> queryAllOrder();

    List<Order> queryByid(String orderid);

}
