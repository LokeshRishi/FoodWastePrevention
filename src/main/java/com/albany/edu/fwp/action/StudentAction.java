/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.albany.edu.fwp.dao.FoodItemsDAO;
import com.albany.edu.fwp.dao.MealCourseDAO;
import com.albany.edu.fwp.dao.QuadInfoDAO;
import com.albany.edu.fwp.model.FoodItems;
import com.albany.edu.fwp.model.MealCourse;
import com.albany.edu.fwp.model.QuadInfo;
import com.opensymphony.xwork2.ActionSupport;
 
public class StudentAction extends ActionSupport {
    private FoodItemsDAO foodItemsDAO;
    private QuadInfoDAO quadInfoDAO;
    private MealCourseDAO mealCourseDAO;
    private List<FoodItems> listFoodItems;
    private List<QuadInfo> listQuad;
    private List<MealCourse> listMealCourse;
    private List<String> quadNames = new ArrayList<String>();
    private List<String> mealCourseNames = new ArrayList<String>();
    private HashMap<String, HashMap<String, List<List<String>>>> allFoodItems;
 
    public void setFoodItemsDAO(FoodItemsDAO foodItemsDAO) {
		this.foodItemsDAO = foodItemsDAO;
	}
    public void setQuadInfoDAO(QuadInfoDAO quadInfoDAO) {
		this.quadInfoDAO = quadInfoDAO;
	}
    public void setMealCourseDAO(MealCourseDAO mealCourseDAO) {
		this.mealCourseDAO = mealCourseDAO;
	}
 
    public String execute() {
    	listFoodItems = foodItemsDAO.list();
		System.out.println("listFoodItems: " + listFoodItems);    		
		for (FoodItems foodItem : listFoodItems){
		    System.out.println("Quad Ids: "+ foodItem.getImages().getImageId());
		}
		
		listQuad = quadInfoDAO.list();
		for (QuadInfo quad : listQuad){
			quadNames.add(quad.getQuadName());
		}
		
		listMealCourse = mealCourseDAO.list();
		for (MealCourse mealCourse : listMealCourse){
			mealCourseNames.add(mealCourse.getMealCourseName());
		}
    	allFoodItems = foodItemsDAO.getAllFoodItemsMap();     
    	for (List foodItem : allFoodItems.get("Indian").get("Breakfast")){
		    System.out.println("Quad Ids: "+ foodItem);
		}
        return SUCCESS;
    }

    
	public List<FoodItems> getListFoodItems() {
		return listFoodItems;
	}
	
	public List<String> getQuadNames() {
		  return quadNames;
	}
	
	public List<String> getMealCourseNames() {
		  return mealCourseNames;
	}
	
    public HashMap<String, HashMap<String, List<List<String>>>> getAllFoodItems() {
          return allFoodItems;
    }

}