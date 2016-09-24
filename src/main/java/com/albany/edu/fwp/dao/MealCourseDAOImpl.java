package com.albany.edu.fwp.dao;


import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import com.albany.edu.fwp.model.MealCourse;;

public class MealCourseDAOImpl implements MealCourseDAO {

    private SessionFactory sessionFactory;
 
    public MealCourseDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    @Transactional
    public List<MealCourse> list() {
        @SuppressWarnings("unchecked")
        
        String hql = "FROM MealCourse";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        List<MealCourse> listMealCourse = (List<MealCourse>) query.list();  
        return listMealCourse;
    }	

}
