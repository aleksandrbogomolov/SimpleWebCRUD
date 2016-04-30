package com.aleksandrbogomolov.simple_web_crud.dao;

import com.aleksandrbogomolov.simple_web_crud.model.User;

import java.util.List;

public interface UserDao {

    User findUserById(long id);

    void saveUser(User user);

    void deleteUser(User user);

    List findAllUsers();
}
