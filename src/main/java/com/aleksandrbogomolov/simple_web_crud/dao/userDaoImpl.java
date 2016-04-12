package com.aleksandrbogomolov.simple_web_crud.dao;

import com.aleksandrbogomolov.simple_web_crud.model.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    private Criteria createCriteria() {
        return getSession().createCriteria(User.class);
    }

    public User findUserById(long id) {
        return getSession().get(User.class, id);
    }

    public void saveUser(User user) {
        getSession().persist(user);
    }

    public void deleteUser(User user) {
        getSession().delete(user);
    }

    public List<User> findAllUsers() {
        return createCriteria().list();
    }

    public List<User> sortUsersById() {
        return createCriteria().addOrder(Order.desc("id")).list();
    }

    public List<User> sortUsersByName() {
        return createCriteria().addOrder(Order.desc("name")).list();
    }
}
