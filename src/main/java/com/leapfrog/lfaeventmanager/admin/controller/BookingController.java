/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.admin.controller;

import com.leapfrog.lfaeventmanager.entity.Booking;
import com.leapfrog.lfaeventmanager.service.BookingService;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Context;
import org.hibernate.Session;
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
@RequestMapping(value = "booking")
public class BookingController {

    @Autowired
    private BookingService bookingService;
    private Session session;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("booking/index");
        mv.addObject("bookings", bookingService.getAll());
        return mv;
    }

    @RequestMapping(value = "addBooking", method = RequestMethod.GET)
    public ModelAndView addBooking(@ModelAttribute(value = "booking") Booking booking) {
        return new ModelAndView("booking/addBooking", "command", new Booking());
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute(value = "booking") Booking booking, @Context HttpServletRequest request) {
        if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
            booking.setId(Integer.parseInt(request.getParameter("id")));
            bookingService.update(booking);
        } else {
            bookingService.insert(booking);
        }
        return "redirect:/booking/index";
    }

    @RequestMapping(value = "editBooking", method = RequestMethod.GET)
    public ModelAndView edit(@ModelAttribute(value = "booking") Booking booking, @Context HttpServletRequest request) {
        ModelAndView mv = null;
        int id = Integer.parseInt(request.getParameter("id"));
        booking = bookingService.getById(id);
        if (booking != null) {
            mv = new ModelAndView("booking/editBooking");
            mv.addObject("bookings", booking);
        }
        return mv;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(@ModelAttribute(value = "booking") Booking booking, @Context HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        bookingService.delete(id);
        return "redirect:/booking/index";
    }
    }
