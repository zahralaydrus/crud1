/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.iceberg.Pertemuan12;

import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author zahra
 */
public class UserService {
    public void saveUser(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        
    }
    public void updateUser(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
    }
    public void deleteUser(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        User user = session.get(User.class,id);
        if (user != null) {
            session.delete(user);
        }
        session.getTransaction().commit();
    }
    
    public User getUser(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        User user = session.get(User.class,id);
        session.getTransaction().commit();
        
        return user;
    }
    
    public List<User> getAllUser(){
        Session session;
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<User>listOfUser;
        listOfUser = session.createQuery("from User").getResultList();
        session.getTransaction().commit();
        
        return listOfUser;
        
    }

}
