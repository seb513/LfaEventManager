/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.controller;

import com.leapfrog.lfaeventmanager.entity.Event;
import com.leapfrog.lfaeventmanager.service.EventService;
import java.util.List;
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
    private EventService eventService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView eventList() {
        ModelAndView mv = new ModelAndView("index");
       // List<Event> eventLists = eventService.findAll();
        mv.addObject("eventLists", eventService.findAll());
        return mv;
    }
}
