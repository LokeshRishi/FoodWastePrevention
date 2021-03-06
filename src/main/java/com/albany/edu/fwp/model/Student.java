package com.albany.edu.fwp.model;

import java.util.HashSet;
import java.util.Set;

public class Student {
    private String studentId;
    private String name;
    private String studentEmail;
    private int year;
    private Set<FoodSelected> foodSelections =	new HashSet<FoodSelected>(0);
    
    
    
 
    public String getStudentId() {
        return studentId;
    }
 
    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public String getStudentEmail() {
        return studentEmail;
    }
 
    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }
 
    public int getYear() {
        return year;
    }
 
    public void setYear(int year) {
        this.year = year;
    }
    
    public Set<FoodSelected> getFoodSelections() {
        return foodSelections;
    }
 
    public void setFoodSelections(Set<FoodSelected> foodSelections) {
        this.foodSelections = foodSelections;
    }
}