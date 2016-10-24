/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;
 
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.albany.edu.fwp.dao.StudentDAO;
 
import com.albany.edu.fwp.model.Student;
import com.opensymphony.xwork2.ActionSupport;
 
public class ManagerAction extends ActionSupport {
    private StudentDAO studentDAO;
    private List<Student> listStudent;
    private HttpSession session;
    
    public void setStudentDAO(StudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }
 
    public String execute() {
        listStudent = studentDAO.list();
    	session = ServletActionContext.getRequest().getSession();
    	session.setAttribute("quadID", 10);
        return SUCCESS;
    }
 
    public List<Student> getListStudent() {
        return listStudent;
    }
}