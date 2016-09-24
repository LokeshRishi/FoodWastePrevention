package com.albany.edu.fwp.dao;

import java.util.HashMap;
import java.util.List;

import com.albany.edu.fwp.model.FoodItems;

public interface FoodItemsDAO {
	List<FoodItems> list();
	HashMap<String, HashMap<String, List<List<String>>>> getAllFoodItemsMap();
//    List<FoodItems> getListBreakfastQuad10();
//    List<FoodItems> getListBreakfastQuad20();
//    List<FoodItems> getListBreakfastQuad30();
//    List<FoodItems> getListBreakfastQuad40();
}
