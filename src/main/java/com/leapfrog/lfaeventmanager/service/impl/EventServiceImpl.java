/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.service.impl;

import com.leapfrog.lfaeventmanager.dao.EventDAO;
import com.leapfrog.lfaeventmanager.entity.Event;
import com.leapfrog.lfaeventmanager.service.EventService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service("EventService")
public class EventServiceImpl implements EventService {

    @Autowired
    private EventDAO eventDAO;

    @Override
    public void insert(Event t) {
        eventDAO.insert(t);
    }

    @Override
    public void update(Event t) {
        eventDAO.update(t);
    }

    @Override
    public void delete(int id) {
        eventDAO.delete(id);
    }

    @Override
    public List<Event> getAll() {
        return eventDAO.getAll();
    }

    @Override
    public Event getById(int id) {
        return eventDAO.getById(id);
    }

}
