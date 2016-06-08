/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.dao.impl;

import com.leapfrog.lfaeventmanager.dao.UserDAO;
import com.leapfrog.lfaeventmanager.entity.User;
import com.leapfrog.lfaeventmanager.entity.User;
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
@Repository("UserDAO")
public class UserDAOImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;
    
    @Override
    public void insert(User t) {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    public void update(User t) {
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
//        session.close();
    }

    @Override
    public List<User> getAll() {
        session=sessionFactory.openSession();
        trans=session.beginTransaction();
        List<User> userList = session.getNamedQuery("User.findAll").list();
        trans.commit();
        session.close();
        return userList;
    }

    @Override
    public User getById(int id) {
       session=sessionFactory.openSession();
        User user=(User) session.get(User.class, id);
        session.close();
        return user;
    }
    
}
