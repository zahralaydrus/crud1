/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.iceberg.Pertemuan12;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author zahra
 */
@Entity
@Table(name = "users")
public class User {
    
    @Id
    @GeneratedValue
    @Column(name = "id")
    protected int id;
    
    @Column (name = "name")
    protected String name;
    
    @Column (name = "email")
    protected String email;
    
    @Column (name = "country")
    protected String country;
    
    public User() {
    }
    
    public User(String name, String email, String country){
        this.name = name;
        this.email = email;
        this.country = country;
    }
    
    public User (int id, String name, String email, String country) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getCountry(){
        return country;
    }
    
    public void setCountry(String country){
        this.country = country;
    }
    }

