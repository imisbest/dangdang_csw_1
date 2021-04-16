package com.csw.test;

import com.csw.entity.Admin;
import com.csw.service.AdminService;
import com.csw.service.AdminServiceImpl;
import org.junit.Test;

public class AdminTest {
    AdminService us = new AdminServiceImpl();

    @Test
    public void test() {
        Admin user = us.queryBy(new Admin("1", "admin", "admin"));
        System.out.println(user);
    }

}
