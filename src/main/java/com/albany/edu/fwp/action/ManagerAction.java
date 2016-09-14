/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;
 
import java.util.List;
 

import com.albany.edu.fwp.dao.StudentDAO;
 
import com.albany.edu.fwp.model.Student;
import com.opensymphony.xwork2.ActionSupport;
 
public class ManagerAction extends ActionSupport {
    private StudentDAO studentDAO;
    private List<Student> listStudent;
 
    public void setStudentDAO(StudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }
 
    public String execute() {
        listStudent = studentDAO.list();
        return SUCCESS;
    }
 
    public List<Student> getListStudent() {
        return listStudent;
    }
}