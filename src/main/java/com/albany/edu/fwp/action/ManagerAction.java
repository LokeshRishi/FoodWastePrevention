/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;
 
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.albany.edu.fwp.dao.FoodItemsDAO;
import com.albany.edu.fwp.dao.ImagesDAO;
import com.albany.edu.fwp.dao.MealCourseDAO;
import com.albany.edu.fwp.dao.StudentDAO;
 
import com.albany.edu.fwp.model.FoodItems;
import com.albany.edu.fwp.model.QuadInfo;
import com.albany.edu.fwp.model.Student;
import com.opensymphony.xwork2.ActionSupport;
 
public class ManagerAction extends ActionSupport {
    private FoodItemsDAO foodItemsDAO; 
    private ImagesDAO imagesDAO;
    private MealCourseDAO mealCourseDAO;
    private HttpSession session;
    private List<List<String>> foodList;
    
    public void setFoodItemsDAO(FoodItemsDAO foodItemsDAO) {
        this.foodItemsDAO = foodItemsDAO;
    }
    public void setImagesDAO(ImagesDAO imagesDAO) {
        this.imagesDAO = imagesDAO;
    }
    public void setMealCourseDAO(MealCourseDAO mealCourseDAO) {
        this.mealCourseDAO = mealCourseDAO;
    }
 
    public String execute() {
        
    	session = ServletActionContext.getRequest().getSession();
    	session.setAttribute("quadID", 10);
    	
    	List <FoodItems> foodItems = foodItemsDAO.listByQuadId(Integer.parseInt(session.getAttribute("quadID").toString()));
    	foodList = new ArrayList<List<String>>();
    	for (FoodItems foodItem : foodItems){
    		List<String> foodItemDetails = new ArrayList();
    		foodItemDetails.add(foodItem.getFoodItemId());
    		foodItemDetails.add(foodItem.getFoodItemName());    		;
    		foodItemDetails.add(imagesDAO.imagePath(foodItem.getImages().getImageId()));
    		foodItemDetails.add(mealCourseDAO.getMealCourse(foodItem.getMealCourse().getMealCourseId()).getMealCourseName()); 
    		foodItemDetails.add(Integer.toString(foodItem.getRelativeServingPlates()));
    		foodItemDetails.add(Integer.toString(foodItem.getCalories()));
    		foodList.add(foodItemDetails);
    	}
    	
        return SUCCESS;
    }

	public List<List<String>> getFoodList() {
		return foodList;
	}

	
 
   
}