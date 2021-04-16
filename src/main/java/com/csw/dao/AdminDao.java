package com.csw.dao;

import com.csw.entity.Admin;

public interface AdminDao {
    Admin queryBy(String username);
}
