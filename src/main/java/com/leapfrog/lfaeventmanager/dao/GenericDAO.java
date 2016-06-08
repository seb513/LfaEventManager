/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.dao;

import java.util.List;

/**
 *
 * @author root
 * @param <T>
 */
public interface GenericDAO<T> {

    void insert(T t);

    void update(T t);

    void delete(int id);

    List<T> getAll();

    T getById(int id);
}
