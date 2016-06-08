/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.admin.controller;

import com.leapfrog.lfaeventmanager.entity.Person;
import com.leapfrog.lfaeventmanager.service.PersonService;
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
@RequestMapping(value = "person")
public class PersonController {

    @Autowired
    private PersonService personService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("person/index");
        mv.addObject("personList", personService.getAll());
        return mv;
    }

    @RequestMapping(value = "addPerson", method = RequestMethod.GET)
    public ModelAndView addPerson(@ModelAttribute(value = "person") Person person) {
        return new ModelAndView("person/addPerson", "command", new Person());
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute(value = "person") Person person, @Context HttpServletRequest request) {
        if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
            person.setId(Integer.parseInt(request.getParameter("id")));
            person.setModifiedDate(new Date(Calendar.getInstance().getTimeInMillis()));
            personService.update(person);
        } else {
            personService.insert(person);
        }
        return "redirect:/person/index";
    }

    @RequestMapping(value = "editPerson", method = RequestMethod.GET)
    public ModelAndView edit(@ModelAttribute(value = "person") Person person, @Context HttpServletRequest request) {
        ModelAndView mv = null;
        int id = Integer.parseInt(request.getParameter("id"));
        person = personService.getById(id);
        if (person != null) {
            mv = new ModelAndView("person/editPerson");
            mv.addObject("persons", person);
        }
        return mv;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(@ModelAttribute(value = "person") Person person, @Context HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        personService.delete(id);
        return "redirect:/person/index";
    }
    }
