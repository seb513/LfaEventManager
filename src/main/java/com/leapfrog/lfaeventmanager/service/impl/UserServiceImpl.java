/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.service.impl;

import com.leapfrog.lfaeventmanager.dao.UserDAO;
import com.leapfrog.lfaeventmanager.entity.User;
import com.leapfrog.lfaeventmanager.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service("UserService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDAO userDAO;
    
    @Override
    public void insert(User t) {
       userDAO.insert(t);
    }

    @Override
    public void update(User t) {
       userDAO.update(t);
    }

    @Override
    public void delete(int id) {
        userDAO.delete(id);
    }

    @Override
    public List<User> getAll() {
        return userDAO.getAll();
    }

    @Override
    public User getById(int id) {
        return userDAO.getById(id);
    }
    
}
