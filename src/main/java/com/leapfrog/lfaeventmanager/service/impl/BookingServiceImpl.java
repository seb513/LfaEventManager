/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.service.impl;

import com.leapfrog.lfaeventmanager.dao.BookingDAO;
import com.leapfrog.lfaeventmanager.entity.Booking;
import com.leapfrog.lfaeventmanager.service.BookingService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service("BookingService")
public class BookingServiceImpl implements BookingService{

     @Autowired
    private BookingDAO bookingDAO;
    
    @Override
    public void insert(Booking t) {
       bookingDAO.insert(t);
    }

    @Override
    public void update(Booking t) {
       bookingDAO.update(t);
    }

    @Override
    public void delete(int id) {
        bookingDAO.delete(id);
    }

    @Override
    public List<Booking> getAll() {
        return bookingDAO.getAll();
    }

    @Override
    public Booking getById(int id) {
        return bookingDAO.getById(id);
    }
    
}
