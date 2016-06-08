/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.service.impl;

import com.leapfrog.lfaeventmanager.dao.PersonDAO;
import com.leapfrog.lfaeventmanager.entity.Person;
import com.leapfrog.lfaeventmanager.service.PersonService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service(value = "PersonService")
public class PersonServiceImpl implements PersonService{

    @Autowired
    private PersonDAO personDAO;
    @Override
    public void insert(Person t) {
        personDAO.insert(t);
    }

    @Override
    public void update(Person t) {
       personDAO.update(t);
    }

    @Override
    public void delete(int id) {
        personDAO.delete(id);
    }

    @Override
    public List<Person> getAll() {
        return personDAO.getAll();
    }

    @Override
    public Person getById(int id) {
        return personDAO.getById(id);
    }
    
}
