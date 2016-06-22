/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.admin.controller;

import com.leapfrog.lfaeventmanager.entity.Event;
import com.leapfrog.lfaeventmanager.entity.EventList;
import com.leapfrog.lfaeventmanager.service.EventListService;
import com.leapfrog.lfaeventmanager.service.EventService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author User
 */
@Controller
@RequestMapping(value = "dash")
public class DashController {

    @Autowired
    private EventService eventService;
    @Autowired
    private EventListService eventListService;
   
    @RequestMapping(value = "dashboard", method = RequestMethod.GET)
    public String dashboard(ModelMap map) {
        List<Event> eventList = eventService.getAll();
        map.addAttribute("eventList",eventList.size());
        List<EventList> eventLists = eventListService.getAll();
        map.addAttribute("eventLists", eventLists.size());
        return "dash/dashboard";
    }

}
