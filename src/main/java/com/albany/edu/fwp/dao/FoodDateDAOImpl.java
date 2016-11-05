package com.albany.edu.fwp.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.albany.edu.fwp.model.FoodDate;
import com.albany.edu.fwp.model.FoodItems;
import com.albany.edu.fwp.model.FoodSelected;
import com.albany.edu.fwp.model.Student;


public class FoodDateDAOImpl implements FoodDateDAO {
	
	private SessionFactory sessionFactory;
	 
    public FoodDateDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

        
    @Transactional
    public List<FoodDate> listFoodByDate(String date) {
        @SuppressWarnings("unchecked")
        String hql = "FROM FoodDate F WHERE F.foodDate = '"+date+"'";
        System.out.println("hql ----> "+hql);
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodDate> listFoodByDate = (List<FoodDate>) query.list();  
        return listFoodByDate;
    }
    
   	

}
