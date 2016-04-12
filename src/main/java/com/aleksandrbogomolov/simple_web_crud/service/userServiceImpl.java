package com.aleksandrbogomolov.simple_web_crud.service;

import com.aleksandrbogomolov.simple_web_crud.dao.UserDao;
import com.aleksandrbogomolov.simple_web_crud.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User findUserById(long id) {
        return userDao.findUserById(id);
    }

    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    public void updateUser(User user) {
        User updateUser = userDao.findUserById(user.getId());
        if (updateUser != null) {
            updateUser.setName(user.getName());
            updateUser.setAge(user.getAge());
            updateUser.setAdmin(user.isAdmin());
        }
    }

    public void deleteUser(User user) {
        userDao.deleteUser(user);
    }

    public void setAdmin(User user) {

    }

    public List<User> findAllUsers() {
        return userDao.findAllUsers();
    }

    public List<User> sortUsersById() {
        return userDao.sortUsersById();
    }

    public List<User> sortUsersByName() {
        return userDao.sortUsersByName();
    }
}
