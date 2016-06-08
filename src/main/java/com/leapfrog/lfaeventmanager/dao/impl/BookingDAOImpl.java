/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.dao.impl;

import com.leapfrog.lfaeventmanager.dao.BookingDAO;
import com.leapfrog.lfaeventmanager.entity.Booking;
import com.leapfrog.lfaeventmanager.entity.Booking;
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
@Repository("BookoingDAO")
public class BookingDAOImpl implements BookingDAO{

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;

    @Override
    public void insert(Booking t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    public void update(Booking t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.saveOrUpdate(t);
        trans.commit();
        session.close();
    }

    @Override
    public void delete(int id) {
        session = sessionFactory.openSession();
        trans=session.beginTransaction();
        session.delete(getById(id));
        trans.commit();
//        session.close();

    }

    @Override
    public List<Booking> getAll() {
        session = sessionFactory.openSession();
        List<Booking> bookingList = session.getNamedQuery("Booking.findAll").list();
        session.close();
        return bookingList;
    }

    @Override
    public Booking getById(int id) {
        session=sessionFactory.openSession();
        Booking booking=(Booking) session.get(Booking.class, id);
        session.close();
        return booking;
    }
    
}
