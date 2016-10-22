package com.albany.edu.fwp.dao;

import java.util.List;

import com.albany.edu.fwp.model.MealCourse;
import com.albany.edu.fwp.model.QuadInfo;;

public interface QuadInfoDAO {
	QuadInfo getQuadInfo(int quadId);
	List<QuadInfo> list();
}
