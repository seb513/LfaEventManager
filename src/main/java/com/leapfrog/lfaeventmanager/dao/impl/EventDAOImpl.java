/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.dao.impl;

import com.leapfrog.lfaeventmanager.dao.EventDAO;
import com.leapfrog.lfaeventmanager.entity.Event;
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
@Repository("EventDAO")
public class EventDAOImpl implements EventDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;

    @Override
    public void insert(Event t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    public void update(Event t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.saveOrUpdate(t);
        trans.commit();
        session.close();
    }

    @Override
    public void delete(int id) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.delete(getById(id));
        trans.commit();
//        session.close();
    }

    @Override
    public List<Event> getAll() {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        List<Event> eventList = session.getNamedQuery("Event.findAll").list();
        trans.commit();
        session.close();
        return eventList;
    }

    @Override
    public Event getById(int id) {
        session = sessionFactory.openSession();
        Event event = (Event) session.get(Event.class, id);
        session.close();
        return event;
    }

    @Override
    public List<Event> findAll() {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        List<Event> eventLists = session.getNamedQuery("Event.findByStatus").setMaxResults(3).list();
        trans.commit();
        session.close();
        return eventLists;
    }

}
