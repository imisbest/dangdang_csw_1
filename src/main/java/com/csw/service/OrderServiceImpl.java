package com.csw.service;

import com.csw.dao.OrderDao;
import com.csw.entity.Order;
import com.csw.util.MybatisUtil;

import java.util.List;

public class OrderServiceImpl implements OrderService {

    @Override
    public void insertDD(Order order) {
        // TODO Auto-generated method stub
        try {
            OrderDao bd = MybatisUtil.getMapper(OrderDao.class);
            bd.insertDD(order);
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
    public List<Order> queryAllOrder() {
        // TODO Auto-generated method stub
        try {
            OrderDao bd = MybatisUtil.getMapper(OrderDao.class);
            List<Order> items = bd.queryAllOrder();
            return items;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<Order> queryByid(String orderid) {
        // TODO Auto-generated method stub
        try {
            OrderDao bd = MybatisUtil.getMapper(OrderDao.class);
            List<Order> items = bd.queryByid(orderid);
            return items;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("查询失败");
        } finally {
            MybatisUtil.close();
        }
    }

}
