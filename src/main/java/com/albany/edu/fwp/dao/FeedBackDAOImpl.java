package com.albany.edu.fwp.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;

import com.albany.edu.fwp.model.FeedBack;
import com.albany.edu.fwp.model.QuadInfo;
import com.albany.edu.fwp.model.Student;

public class FeedBackDAOImpl implements FeedBackDAO{
	
	 private SessionFactory sessionFactory;
	 
	    public FeedBackDAOImpl(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }
	
	@Transactional
	public void insert(String description, QuadInfo quadInfo, Student student){
    	FeedBack feedBack = new FeedBack();
    	feedBack.setDescription(description);
    	feedBack.setQuadInfo(quadInfo);
    	feedBack.setStudent(student);    	
    	sessionFactory.getCurrentSession().save(feedBack);	    	
    }

}
