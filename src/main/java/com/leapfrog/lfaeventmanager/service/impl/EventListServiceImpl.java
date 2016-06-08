/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.service.impl;

import com.leapfrog.lfaeventmanager.dao.EventListDAO;
import com.leapfrog.lfaeventmanager.entity.EventList;
import com.leapfrog.lfaeventmanager.service.EventListService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service("EventListService")
public class EventListServiceImpl implements EventListService{

    @Autowired
    private EventListDAO eventListDAO;
    
    @Override
    public void insert(EventList t) {
       eventListDAO.insert(t);
    }

    @Override
    public void update(EventList t) {
        eventListDAO.update(t);
    }

    @Override
    public void delete(int id) {
        eventListDAO.delete(id);
    }

    @Override
    public List<EventList> getAll() {
        return eventListDAO.getAll();
    }

    @Override
    public EventList getById(int id) {
        return eventListDAO.getById(id);
    }
    
}
