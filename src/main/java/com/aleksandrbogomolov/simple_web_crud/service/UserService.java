package com.aleksandrbogomolov.simple_web_crud.service;

import com.aleksandrbogomolov.simple_web_crud.model.User;

import java.util.List;

public interface UserService {

    User findUserById(long id);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUser(User user);

    void setAdmin(User user);

    List findAllUsers();
}
