package com.b2c.springbootproduct.dao;

import com.b2c.springbootproduct.domain.User;

import java.util.List;

public interface UserDao {
    List<User> findUserList();
}
