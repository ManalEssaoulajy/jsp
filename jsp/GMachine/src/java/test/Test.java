/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import daao.IDao;
import entities.Machine;

import java.rmi.RemoteException;
import java.util.logging.Level;
import java.util.logging.Logger;
import service.MachineService;

import util.HibernateUtil;

/**
 *
 * @author DELL
 */
public class Test {
    public static void main(String[] args) {
      
           // HibernateUtil.getSessionFactory();
            
            IDao<Machine> dao1 =new MachineService();
          
            
            dao1.create(new Machine("M1","DELL",5900));
            dao1.create(new Machine("M2","HP",3900));
            dao1.create(new Machine("M3","THINKPAD",5500));
              dao1.create(new Machine("M1","DELL",5900));
            dao1.create(new Machine("M2","HP",3900));
            dao1.create(new Machine("M3","THINKPAD",5500));
            
            for(Machine  m  : dao1.findAll())
               System.out.println(m);
       
        }
         
        
    
}
