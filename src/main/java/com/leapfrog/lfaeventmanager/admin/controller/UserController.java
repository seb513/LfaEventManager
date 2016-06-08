/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.admin.controller;

import com.leapfrog.lfaeventmanager.entity.User;
import com.leapfrog.lfaeventmanager.service.UserService;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Context;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
@RequestMapping(value = "user")
public class UserController {
     @Autowired
    private UserService userService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("user/index");
        mv.addObject("userList", userService.getAll());
        return mv;
    }

    @RequestMapping(value = "addUser", method = RequestMethod.GET)
    public ModelAndView addUser(@ModelAttribute(value = "user") User userList) {
        return new ModelAndView("user/addUser", "command", new User());
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute(value = "user") User userList, @Context HttpServletRequest request) {
        if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
            userList.setId(Integer.parseInt(request.getParameter("id")));
            userList.setModifiedDate(new Date(Calendar.getInstance().getTimeInMillis()));
            userService.update(userList);
        } else {
            userService.insert(userList);
        }
        return "redirect:/user/index";
    }

    @RequestMapping(value = "editUser", method = RequestMethod.GET)
    public ModelAndView edit(@ModelAttribute(value = "user") User user, @Context HttpServletRequest request) {
        ModelAndView mv = null;
        int id = Integer.parseInt(request.getParameter("id"));
        user = userService.getById(id);
        if (user != null) {
            mv = new ModelAndView("user/editUser");
            mv.addObject("userList", user);
        }
        return mv;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(@ModelAttribute(value = "user") User userList, @Context HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.delete(id);
        return "redirect:/user/index";
    }
}
