/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;
 
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.albany.edu.fwp.dao.FoodItemsDAO;
import com.albany.edu.fwp.dao.FoodSelectedDAO;
import com.albany.edu.fwp.dao.MealCourseDAO;
import com.albany.edu.fwp.dao.QuadInfoDAO;
import com.albany.edu.fwp.dao.StudentDAO;
import com.albany.edu.fwp.model.FoodItems;
import com.albany.edu.fwp.model.MealCourse;
import com.albany.edu.fwp.model.QuadInfo;
import com.albany.edu.fwp.model.Student;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
 
public class StudentAction extends ActionSupport {
	private HttpServletRequest request;
	private HttpSession session;
    private FoodItemsDAO foodItemsDAO;
    private QuadInfoDAO quadInfoDAO;
    private MealCourseDAO mealCourseDAO;
    private StudentDAO studentDAO;
    private FoodSelectedDAO foodSelectedDAO;
    private List<FoodItems> listFoodItems;
    private List<QuadInfo> listQuad;
    private List<MealCourse> listMealCourse;
    private List<String> quadNames;
    private List<String> mealCourseNames;
    private Student student;
    private FoodItems foodItems;
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
    public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}
    public void setFoodSelectedDAO(FoodSelectedDAO foodSelectedDAO) {
		this.foodSelectedDAO = foodSelectedDAO;
	}
 
    public String execute() {
//    	listFoodItems = foodItemsDAO.list();
//		System.out.println("listFoodItems: " + listFoodItems);    		
//		for (FoodItems foodItem : listFoodItems){
//		    System.out.println("Quad Ids: "+ foodItem.getImages().getImageId());
//		}
    	//ActionContext.getContext().getParameters();
    	
    	session = ServletActionContext.getRequest().getSession();
    	session.setAttribute("studentId", "as132736");
    	
		listQuad = quadInfoDAO.list();
		quadNames = new ArrayList<String>();
			for (QuadInfo quad : listQuad){
				quadNames.add(quad.getQuadName());
			}
		
		
		listMealCourse = mealCourseDAO.list();
		mealCourseNames = new ArrayList<String>();
			for (MealCourse mealCourse : listMealCourse){
				mealCourseNames.add(mealCourse.getMealCourseName());
			}
		
    	allFoodItems = foodItemsDAO.getAllFoodItemsMap();     
    	for (List foodItem : allFoodItems.get("Indian").get("Breakfast")){
		    System.out.println("Quad Ids: "+ foodItem);
		}
    	
    	request = ServletActionContext.getRequest();
    	if( !(request.getParameterMap().isEmpty()) ) { 
    		String studentId=session.getAttribute("studentId").toString();
    		student = studentDAO.getStudent(studentId);
    		if( !(foodSelectedDAO.listFoodSelected(student).isEmpty()) ){
    			foodSelectedDAO.deleteStudentSelection(student);
    		}
    		
    		DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    		Date date = new Date();
    		dateFormat.format(date).toString();
    		Map<String, String[]> map = request.getParameterMap();
    		Iterator<Entry<String,String[]>> iterator = map.entrySet().iterator();
    		while (iterator.hasNext()) {
    			Map.Entry<String,String[]> entry = (Map.Entry<String,String[]>) iterator.next();
    			System.out.println("Key : " + entry.getKey() + " Value :" + entry.getValue()[0]);
    			foodItems=foodItemsDAO.getFoodItem(entry.getKey());
    			foodSelectedDAO.insertFoodSelected(Integer.parseInt(entry.getValue()[0]), foodItems, student, dateFormat.format(date).toString());
    		}
    		//System.out.println("------Parameters----->"+request.getParameterMap().get("5")[0]);
    	}
        return SUCCESS;
    }

    
//	public List<FoodItems> getListFoodItems() {
//		return listFoodItems;
//	}
	
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