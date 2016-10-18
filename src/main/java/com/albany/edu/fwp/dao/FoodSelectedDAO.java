package com.albany.edu.fwp.dao;

import java.util.List;

import com.albany.edu.fwp.model.FoodItems;
import com.albany.edu.fwp.model.FoodSelected;
import com.albany.edu.fwp.model.Student;

public interface FoodSelectedDAO {
	
	List<FoodSelected> listFoodSelected(Student student);
	void deleteStudentSelection(Student student);
	void insertFoodSelected(int Num_Plates, FoodItems foodItems, Student student, String DateTime);

}
