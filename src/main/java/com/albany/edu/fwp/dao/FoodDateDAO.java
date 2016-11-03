package com.albany.edu.fwp.dao;

import java.util.Date;
import java.util.List;

import com.albany.edu.fwp.model.FoodDate;

public interface FoodDateDAO {
	
	List<FoodDate> listFoodByDate(String date);

}
