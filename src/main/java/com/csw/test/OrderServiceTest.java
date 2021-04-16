package com.csw.test;

import com.csw.entity.Order;
import com.csw.service.OrderService;
import com.csw.service.OrderServiceImpl;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.fail;

public class OrderServiceTest {
    OrderService os = new OrderServiceImpl();

    @Test
    public void testInsertDD() {
        fail("尚未实现");
    }

    @Test
    public void testQueryAllOrder() {
        List<Order> list = os.queryAllOrder();
        for (Order order : list) {
            System.out.println(order);
        }
    }

}
