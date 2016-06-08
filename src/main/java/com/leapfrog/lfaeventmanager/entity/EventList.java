/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfaeventmanager.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author User
 */
@Entity
@Table(name = "tbl_event_list", catalog = "lfa_event_manager", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EventList.findAll", query = "SELECT e FROM EventList e"),
    @NamedQuery(name = "EventList.findById", query = "SELECT e FROM EventList e WHERE e.id = :id"),
    @NamedQuery(name = "EventList.findByElName", query = "SELECT e FROM EventList e WHERE e.elName = :elName"),
    @NamedQuery(name = "EventList.findByAddedDate", query = "SELECT e FROM EventList e WHERE e.addedDate = :addedDate"),
    @NamedQuery(name = "EventList.findByModifiedDate", query = "SELECT e FROM EventList e WHERE e.modifiedDate = :modifiedDate"),
    @NamedQuery(name = "EventList.findByStatus", query = "SELECT e FROM EventList e WHERE e.status = :status")})
public class EventList implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "el_name")
    private String elName;
    @Column(name = "added_date", insertable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;
    @Column(name = "modified_date",nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedDate;
    @Column(name = "status")
    private boolean status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "elId")
    private List<Event> eventList;

    public EventList() {
    }

    public EventList(Integer id) {
        this.id = id;
    }

    public EventList(Integer id, String elName, boolean status) {
        this.id = id;
        this.elName = elName;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getElName() {
        return elName;
    }

    public void setElName(String elName) {
        this.elName = elName;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @XmlTransient
    public List<Event> getEventList() {
        return eventList;
    }

    public void setEventList(List<Event> eventList) {
        this.eventList = eventList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EventList)) {
            return false;
        }
        EventList other = (EventList) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.leapfrog.lfaeventmanager.entity.EventList[ id=" + id + " ]";
    }
    
}
