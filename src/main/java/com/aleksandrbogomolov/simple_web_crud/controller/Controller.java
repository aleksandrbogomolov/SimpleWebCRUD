package com.aleksandrbogomolov.simple_web_crud.controller;

import com.aleksandrbogomolov.simple_web_crud.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
@RequestMapping("/")
public class Controller {

    @Autowired
    UserService userService;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String listUsers(ModelMap modelMap) {
        modelMap.addAttribute("users", userService.findAllUsers());
        return "index";
    }
}
