package com.albany.edu.fwp.dao;

	
	import java.util.List;
	import javax.transaction.Transactional;
	import org.hibernate.Criteria;
	import org.hibernate.Query;
	import org.hibernate.SessionFactory;
	import com.albany.edu.fwp.model.QuadInfo;;

	public class QuadInfoDAOImpl implements QuadInfoDAO {

	    private SessionFactory sessionFactory;
	 
	    public QuadInfoDAOImpl(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }
	    
	    @Transactional
	    public List<QuadInfo> list() {
	        @SuppressWarnings("unchecked")
	        
	        String hql = "FROM QuadInfo";
	        Query query = sessionFactory.getCurrentSession().createQuery(hql);
	        List<QuadInfo> listQuad = (List<QuadInfo>) query.list();  
	        return listQuad;
	    }	

}
