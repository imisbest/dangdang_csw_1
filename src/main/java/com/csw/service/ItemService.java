package com.csw.service;

import com.csw.entity.Item;

import java.util.List;

public interface ItemService {

    void insertOrder(Item item);

    List<Item> queryAllOrder();

    List<Item> queryByItemID(String itemid);

}
