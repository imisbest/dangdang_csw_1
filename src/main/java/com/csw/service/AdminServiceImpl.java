package com.csw.service;

import com.csw.dao.AdminDao;
import com.csw.entity.Admin;
import com.csw.util.MybatisUtil;

public class AdminServiceImpl implements AdminService {
    public Admin queryBy(Admin admin) {
        try {
            AdminDao ud = MybatisUtil.getMapper(AdminDao.class);
            String username = admin.getUsername();
            Admin uu = ud.queryBy(username);
            if (uu == null)
                throw new RuntimeException("用户不存在");
            if (!uu.getPassword().equals(admin.getPassword()))
                throw new RuntimeException("密码错误");
            return uu;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }
    }
}
