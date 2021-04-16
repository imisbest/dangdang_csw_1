package com.csw.dao;

import com.csw.entity.Item;

import java.util.List;

public interface ItemDao {

    void insertOrder(Item item);

    List<Item> queryAllOrder();

    List<Item> queryByItemID(String itemid);
}
