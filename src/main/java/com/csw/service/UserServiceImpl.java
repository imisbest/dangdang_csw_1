package com.csw.service;

import com.csw.dao.UserDao;
import com.csw.entity.User;
import com.csw.util.MybatisUtil;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Override
    public User queryBy(User user) {
        try {
            // TODO Auto-generated method stub
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            User uu = ud.queryBy(user.getEmail());
            System.out.println("queryBy(User user):" + uu);
            if (uu != null)
                throw new RuntimeException("用户已经存在");
            /*
             * if (!uu.getPassword().equals(user.getPassword())) throw new
             * RuntimeException("密码错误");
             */
            return uu;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public void regist(User user) {
        // TODO Auto-generated method stub

        try {
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            ud.regist(user);
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
    public User query(String name, String password) {
        // TODO Auto-generated method stub
        try {
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            User uu = ud.query(name);
            System.out.println("service uu:" + uu);
            if (uu == null)
                throw new RuntimeException("用户不存在");
            if (!uu.getPassword().equals(password))
                throw new RuntimeException("密码错误");
            return uu;
        } catch (Exception e) {
            System.out.println("e.getMessage():" + e.getMessage());
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public String querysalt(String name) {
        // TODO Auto-generated method stub
        try {
            // TODO Auto-generated method stub
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            String salt = ud.querysalt(name);

            return salt;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public List<User> queryAllUser() {
        // TODO Auto-generated method stub
        try {
            // TODO Auto-generated method stub
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            List<User> list = ud.queryAllUser();

            return list;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public User queryByID(String userid) {
        // TODO Auto-generated method stub
        try {
            // TODO Auto-generated method stub
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            User uu = ud.queryByID(userid);

            return uu;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            MybatisUtil.close();
        }
    }

    @Override
    public void update(User uu) {
        // TODO Auto-generated method stub
        try {
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            ud.update(uu);
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
    public void updateht(User uu) {
        // TODO Auto-generated method stub
        try {
            UserDao ud = MybatisUtil.getMapper(UserDao.class);
            ud.updateht(uu);
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

}
