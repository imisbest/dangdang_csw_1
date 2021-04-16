package com.csw.dao;

import com.csw.entity.User;

import java.util.List;

public interface UserDao {
    User queryBy(String email);

    void regist(User user);

    User query(String name);

    String querysalt(String name);

    List<User> queryAllUser();

    User queryByID(String userid);

    void update(User uu);

    void updateht(User uu);
}
