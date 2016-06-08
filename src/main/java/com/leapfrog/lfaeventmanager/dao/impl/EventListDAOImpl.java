/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.dao.impl;

import com.leapfrog.lfaeventmanager.dao.EventListDAO;
import com.leapfrog.lfaeventmanager.entity.EventList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository(value = "EventListDAO")
public class EventListDAOImpl implements EventListDAO{

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;
    
    @Override
    public void insert(EventList t) {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    public void update(EventList t) {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        session.saveOrUpdate(t);
        trans.commit();
        session.close();
    }

    @Override
    public void delete(int id) {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        session.delete(getById(id));
        trans.commit();
       // session.close();
    }

    @Override
    public List<EventList> getAll() {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        List<EventList> eventList = session.getNamedQuery("EventList.findAll").list();
        trans.commit();
        session.close();
        return eventList;
    }

    @Override
    public EventList getById(int id) {
       session=sessionFactory.openSession();
        EventList eventList=(EventList) session.get(EventList.class, id);
        session.close();
        return eventList;
        
    }
    
}
