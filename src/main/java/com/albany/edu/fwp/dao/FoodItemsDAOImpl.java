package com.albany.edu.fwp.dao;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.albany.edu.fwp.model.FoodItems;

public class FoodItemsDAOImpl implements FoodItemsDAO {

    private SessionFactory sessionFactory;
 
    public FoodItemsDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    @Transactional
    public List<FoodItems> list() {
        @SuppressWarnings("unchecked")
        
        String hql = "FROM FoodItems F WHERE F.isSelectedInMenu = true";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodItems> listFoodItems = (List<FoodItems>) query.list();        
        return listFoodItems;
    }
 
    
    @Transactional
    public List<FoodItems> getListQuads() {
        @SuppressWarnings("unchecked")
        
        String hql = "SELECT distinct F.quadId FROM FoodItems F WHERE F.isSelectedInMenu = true";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodItems> listQuads = (List<FoodItems>) query.list();
        
        return listQuads;
    }    
    
    @Transactional
    public List<FoodItems> getListBreakfastQuad10() {
        @SuppressWarnings("unchecked")
        
        String hql = "SELECT F.foodItemName FROM FoodItems F WHERE F.isSelectedInMenu = true AND F.quadId = 10 AND F.mealCourseId = 111";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodItems> listBreakfastQuad10 = (List<FoodItems>) query.list();
        
        return listBreakfastQuad10;
    }
    
    @Transactional
    public List<FoodItems> getListBreakfastQuad20() {
        @SuppressWarnings("unchecked")
        
        String hql = "SELECT F.foodItemName FROM FoodItems F WHERE F.isSelectedInMenu = true AND F.quadId = 20 AND F.mealCourseId = 111";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodItems> listBreakfastQuad20 = (List<FoodItems>) query.list();
        
        return listBreakfastQuad20;
    }
    
    @Transactional
    public List<FoodItems> getListBreakfastQuad30() {
        @SuppressWarnings("unchecked")
        
        String hql = "SELECT F.foodItemName FROM FoodItems F WHERE F.isSelectedInMenu = true AND F.quadId = 30 AND F.mealCourseId = 111";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodItems> listBreakfastQuad30 = (List<FoodItems>) query.list();
        
        return listBreakfastQuad30;
    }
    
    @Transactional
    public List<FoodItems> getListBreakfastQuad40() {
        @SuppressWarnings("unchecked")
        
        String hql = "SELECT F.foodItemName FROM FoodItems F WHERE F.isSelectedInMenu = true AND F.quadId = 40 AND F.mealCourseId = 111";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<FoodItems> listBreakfastQuad40 = (List<FoodItems>) query.list();
        
        return listBreakfastQuad40;
    }

   
}
