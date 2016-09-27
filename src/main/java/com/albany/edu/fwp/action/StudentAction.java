/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;
 
import java.util.List;
 


import com.albany.edu.fwp.dao.FoodItemsDAO;
 
import com.albany.edu.fwp.model.FoodItems;
import com.opensymphony.xwork2.ActionSupport;
 
public class StudentAction extends ActionSupport {
    private FoodItemsDAO foodItemsDAO;
    private List<FoodItems> listFoodItems;
    private List<FoodItems> listQuads;
    private List<FoodItems> listBreakfastQuad10;
    private List<FoodItems> listBreakfastQuad20;
    private List<FoodItems> listBreakfastQuad30;
    private List<FoodItems> listBreakfastQuad40;
 
    public void setFoodItemsDAO(FoodItemsDAO foodItemsDAO) {
        this.foodItemsDAO = foodItemsDAO;
    }
 
    public String execute() {
    	listFoodItems = foodItemsDAO.list();
        return SUCCESS;
    }
    
    public List<FoodItems> getListFoodItems() {
        return listFoodItems;
    }
 
    public List<FoodItems> getListQuads() {
        return listQuads;
    }
    
    public List<FoodItems> getListBreakfastQuad10() {
        return listBreakfastQuad10;
    }
    
    public List<FoodItems> getListBreakfastQuad20() {
        return listBreakfastQuad20;
    }
    
    public List<FoodItems> getListBreakfastQuad30() {
        return listBreakfastQuad30;
    }
    
    public List<FoodItems> getListBreakfastQuad40() {
        return listBreakfastQuad40;
    }
}