package com.albany.edu.fwp.dao;

import com.albany.edu.fwp.model.QuadInfo;
import com.albany.edu.fwp.model.Student;



public interface FeedBackDAO {	
	void insert(String description, QuadInfo quadInfo, Student student);
	
}
