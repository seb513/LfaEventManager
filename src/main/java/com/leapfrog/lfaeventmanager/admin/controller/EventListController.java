/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.admin.controller;

import com.leapfrog.lfaeventmanager.entity.EventList;
import com.leapfrog.lfaeventmanager.service.EventListService;
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
@RequestMapping(value = "eventlist")
public class EventListController {

    @Autowired
    private EventListService eventListService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("eventlist/index");
        mv.addObject("eventLists", eventListService.getAll());
        return mv;
    }

    @RequestMapping(value = "addEventList", method = RequestMethod.GET)
    public ModelAndView addEventList(@ModelAttribute(value = "eventlist") EventList eventList) {
        return new ModelAndView("eventlist/addEventList", "command", new EventList());
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute(value = "eventlist") EventList eventList, @Context HttpServletRequest request) {
        if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
            eventList.setId(Integer.parseInt(request.getParameter("id")));
            eventList.setModifiedDate(new Date(Calendar.getInstance().getTimeInMillis()));
            eventListService.update(eventList);
        } else {
            eventListService.insert(eventList);
        }
        return "redirect:/eventlist/index";
    }

    @RequestMapping(value = "editEventList", method = RequestMethod.GET)
    public ModelAndView edit(@ModelAttribute(value = "eventlist") EventList eventList, @Context HttpServletRequest request) {
        ModelAndView mv = null;
        int id = Integer.parseInt(request.getParameter("id"));
        eventList = eventListService.getById(id);
        if (eventList != null) {
            mv = new ModelAndView("eventlist/editEventList");
            mv.addObject("eventLists", eventList);
        }
        return mv;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(@ModelAttribute(value = "eventlist") EventList eventList, @Context HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        eventListService.delete(id);
        return "redirect:/eventlist/index";
    }
    }
