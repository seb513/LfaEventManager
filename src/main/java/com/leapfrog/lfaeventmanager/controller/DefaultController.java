/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.controller;

import com.leapfrog.lfaeventmanager.service.EventListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
@RequestMapping(value = "/")
public class DefaultController {
    @Autowired
    private EventListService eventListService;
    
//    @RequestMapping(value = "/",method = RequestMethod.GET)
//    public String index(){
//        return "index";
//    }
   
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView eventList(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("eventLists", eventListService.getAll());
        return mv;
    }
}
