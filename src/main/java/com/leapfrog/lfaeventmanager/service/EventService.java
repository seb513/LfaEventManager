/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.service;

import com.leapfrog.lfaeventmanager.entity.Event;
import java.util.List;

/**
 *
 * @author root
 */
public interface EventService extends GenericService<Event>{
    List<Event> findAll();
}
