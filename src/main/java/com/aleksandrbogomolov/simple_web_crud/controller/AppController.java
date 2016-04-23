package com.aleksandrbogomolov.simple_web_crud.controller;

import com.aleksandrbogomolov.simple_web_crud.model.User;
import com.aleksandrbogomolov.simple_web_crud.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/")
public class AppController {

    @Autowired
    UserService userService;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String listUsers(ModelMap modelMap) {
        List<User> users = userService.findAllUsers();
        modelMap.addAttribute("users", users);
        return "index";
    }

    @RequestMapping(value = {"/newUser"}, method = RequestMethod.GET)
    public String addUser(ModelMap modelMap) {

        User user = new User();
        modelMap.addAttribute("User", user);
        return "newUser";
    }

    @RequestMapping(value = {"/newUser"}, method = RequestMethod.POST)
    public String saveUser(User user, ModelMap modelMap) {

        userService.saveUser(user);
        modelMap.addAttribute("User", user);
        return "index";
    }
}
