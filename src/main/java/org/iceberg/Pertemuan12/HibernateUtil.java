/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.iceberg.Pertemuan12;


import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
        
/**
 *
 * @author zahra
 */
public class HibernateUtil {
    private static SessionFactory sessionFactory;
    static Session get;
    
    public static SessionFactory getSessionFactory(){
        if (sessionFactory == null){
            sessionFactory = (SessionFactory) new Configuration().configure().buildSessionFactory();
        }
        return sessionFactory;
    }
    
    

    static Object createSessionFactory() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
