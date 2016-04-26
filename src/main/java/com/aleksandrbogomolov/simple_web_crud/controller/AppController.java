package com.aleksandrbogomolov.simple_web_crud.controller;

import com.aleksandrbogomolov.simple_web_crud.model.User;
import com.aleksandrbogomolov.simple_web_crud.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class AppController {

    @Autowired
    UserService userService;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String listUsers(ModelMap modelMap) {
        List users = userService.findAllUsers();
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
        return "redirect:/";
    }

    @RequestMapping(value = {"/newUser-{id}"}, method = RequestMethod.GET)
    public String editUser(@PathVariable long id, ModelMap modelMap) {

        User user = userService.findUserById(id);
        modelMap.addAttribute("User", user);
        return "newUser";
    }

    @RequestMapping(value = {"/newUser-{id}"}, method = RequestMethod.POST)
    public String updateUser(User user, ModelMap modelMap) {

        userService.updateUser(user);
        modelMap.addAttribute("User", user);
        return "redirect:/";
    }

    @RequestMapping(value = {"/deleteUser-{id}"}, method = RequestMethod.GET)
    public String deleteUser(@PathVariable long id) {

        userService.deleteUser(userService.findUserById(id));
        return "redirect:/";
    }

    @RequestMapping(value = {"/sortById"}, method = RequestMethod.GET)
    public String sortById(ModelMap modelMap) {

        List users = userService.sortUsersById();
        modelMap.addAttribute("users", users);
        return "index";
    }

    @RequestMapping(value = {"/sortByName"}, method = RequestMethod.GET)
    public String sortByName(ModelMap modelMap) {

        List users = userService.sortUsersByName();
        modelMap.addAttribute("users", users);
        return "index";
    }

    @RequestMapping(value = {"/findUser"}, method = RequestMethod.GET)
    public String findUser(String id, ModelMap modelMap) {

        List<User> users = new ArrayList<>();
        users.add(userService.findUserById(Long.parseLong(id)));
        modelMap.addAttribute("users", users);
        return "index";
    }
}
