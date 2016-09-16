package com.albany.edu.fwp.model;

import java.util.HashSet;
import java.util.Set;

public class FoodItems {
    private int foodItemId;
    private String foodItemName;    
    private int quadId;
    private int relativeAmount;
    private int relativeServingPlates;
    private int imageId;
    private int calories;
    private int mealCourseId;
    private boolean isSelectedInMenu;
    private Set<FoodSelected> foodSelections =	new HashSet<FoodSelected>(0);
    
    
    
    public int getFoodItemId() {
		return foodItemId;
	}

	public void setFoodItemId(int foodItemId) {
		this.foodItemId = foodItemId;
	}

	public String getFoodItemName() {
		return foodItemName;
	}

	public void setFoodItemName(String foodItemName) {
		this.foodItemName = foodItemName;
	}

	public int getQuadId() {
		return quadId;
	}

	public void setQuadId(int quadId) {
		this.quadId = quadId;
	}

	public int getRelativeAmount() {
		return relativeAmount;
	}

	public void setRelativeAmount(int relativeAmount) {
		this.relativeAmount = relativeAmount;
	}

	public int getRelativeServingPlates() {
		return relativeServingPlates;
	}

	public void setRelativeServingPlates(int relativeServingPlates) {
		this.relativeServingPlates = relativeServingPlates;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getCalories() {
		return calories;
	}

	public void setCalories(int calories) {
		this.calories = calories;
	}

	public int getMealCourseId() {
		return mealCourseId;
	}

	public void setMealCourseId(int mealCourseId) {
		this.mealCourseId = mealCourseId;
	}
   
    
    public Set<FoodSelected> getFoodSelections() {
        return foodSelections;
    }
 
    public void setFoodSelections(Set<FoodSelected> foodSelections) {
        this.foodSelections = foodSelections;
    }

	public boolean getIsSelectedInMenu() {
		return isSelectedInMenu;
	}

	public void setIsSelectedInMenu(boolean isSelectedInMenu) {
		this.isSelectedInMenu = isSelectedInMenu;
	}

	
}