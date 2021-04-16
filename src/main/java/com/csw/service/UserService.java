package com.csw.service;

import com.csw.entity.User;

import java.util.List;

public interface UserService {

    User queryBy(User user);

    void regist(User user);

    User query(String name, String password);

    String querysalt(String name);

    List<User> queryAllUser();

    User queryByID(String userid);

    void update(User uu);

    void updateht(User uu);

}
