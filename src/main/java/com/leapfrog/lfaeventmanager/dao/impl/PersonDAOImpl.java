/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.dao.impl;

import com.leapfrog.lfaeventmanager.dao.PersonDAO;
import com.leapfrog.lfaeventmanager.entity.Person;
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
@Repository(value = "PersonDAO")
public class PersonDAOImpl implements PersonDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;

    @Override
    public void insert(Person t) {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        session.save(t);
        trans.commit();
        session.close();
    }

    @Override
    public void update(Person t) {
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
    public List<Person> getAll() {
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        List<Person> personList = session.getNamedQuery("Person.findAll").list();
        session.close();
        return personList;
    }

    @Override
    public Person getById(int id) {
        session = sessionFactory.openSession();
        Person person = (Person) session.get(Person.class, id);
        session.close();
        return person;
    }

}
