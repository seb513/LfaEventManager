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
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
@RequestMapping(value = "event")
public class EventController {

    @Autowired
    private EventService eventService;

    @Autowired
    private EventListService eventListService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index(@ModelAttribute(value = "event") EventList eventList, @Context HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("event/index");
        mv.addObject("eventList", eventService.getAll());
        return mv;
    }

    @RequestMapping(value = "addEvent", method = RequestMethod.GET)
    public ModelAndView addEvent(@ModelAttribute(value = "event") Event eventList) {
        return new ModelAndView("event/addEvent", "command", new Event());
    }

//    @RequestMapping(value = "save", method = RequestMethod.POST)
//    public String save(@ModelAttribute(value = "event") Event eventList, @Context HttpServletRequest request) {
//        if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
//            eventList.setId(Integer.parseInt(request.getParameter("id")));
//            eventList.setModifiedDate(new Date(Calendar.getInstance().getTimeInMillis()));
//            eventService.update(eventList);
//        } else {
//            eventService.insert(eventList);
//        }
//        return "redirect:/event/index";
//    }
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute(value = "event") Event eventList, @Context HttpServletRequest request) throws ParseException {
        EventList el = eventListService.getById(Integer.parseInt(request.getParameter("id")));
        if (el != null) {
            Event e = new Event();
            e.setEventName(request.getParameter("event_name"));
            e.setPresenter(request.getParameter("presenter"));
            e.setDescription(request.getParameter("description"));
            e.setLocation(request.getParameter("location"));
            e.setUrl(request.getParameter("url"));
            String startDateStr = request.getParameter("start_date");
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
            Date startDate = sdf.parse(startDateStr);
            eventService.insert(e);
        }
        return "redirect:/event/index";
    }

    @RequestMapping(value = "editEvent", method = RequestMethod.GET)
    public ModelAndView edit(@ModelAttribute(value = "event") Event event, @Context HttpServletRequest request) {
        ModelAndView mv = null;
        int id = Integer.parseInt(request.getParameter("id"));
        event = eventService.getById(id);
        if (event != null) {
            mv = new ModelAndView("event/editEvent");
            mv.addObject("eventList", event);
        }
        return mv;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(@ModelAttribute(value = "event") Event eventList, @Context HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        eventService.delete(id);
        return "redirect:/event/index";
    }
}
