package com.csw.service;

import com.csw.dao.ItemDao;
import com.csw.entity.Item;
import com.csw.util.MybatisUtil;

import java.util.List;

public class ItemServiceImpl implements ItemService {

    @Override
    public void insertOrder(Item item) {
        // TODO Auto-generated method stub
        try {
            ItemDao bd = MybatisUtil.getMapper(ItemDao.class);
            bd.insertOrder(item);
            MybatisUtil.commit();
        } catch (Exception e) {
            try {
                MybatisUtil.rollback();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
            e.printStackTrace();
            throw new RuntimeException("插入失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<Item> queryAllOrder() {
        // TODO Auto-generated method stub
        try {
            ItemDao bd = MybatisUtil.getMapper(ItemDao.class);
            List<Item> items = bd.queryAllOrder();
            return items;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<Item> queryByItemID(String itemid) {
        // TODO Auto-generated method stub
        try {
            ItemDao bd = MybatisUtil.getMapper(ItemDao.class);
            List<Item> item = bd.queryByItemID(itemid);
            for (Item item2 : item) {
                System.out.println("service item:" + item2);
            }
            return item;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
    }

}
