/**
 * Copyright CodeJava.net To Present
 * All rights reserved.
 */
package com.albany.edu.fwp.action;

import java.io.File;

import com.mysql.jdbc.StringUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.http.HttpSession;
import javax.xml.parsers.*;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.struts2.ServletActionContext;
import org.w3c.dom.*;

public class LoginAction extends ActionSupport{
	private String sessionUID, sessionPassword, redirection, newPassword, confirmNewPassword, type;
	private String err;
	
	//Remove this///
	
	private  String xmlfile;
	
    public String execute() {
    	xmlfile=ServletActionContext.getServletContext().getRealPath("/")+"xml/login.xml";
    	return SUCCESS;
    }
    
    public String matchUIDandPassword(){
    	NodeList loginList=null;
	    try
	    {
	    	System.out.println("--->"+xmlfile);
	    	File loginFile = new File(xmlfile);
	    	DocumentBuilderFactory logindbf = DocumentBuilderFactory.newInstance();
	    	DocumentBuilder logindb = logindbf.newDocumentBuilder();
	    	Document loginDocument = logindb.parse(loginFile);
	    	loginDocument.getDocumentElement().normalize();
	    	loginList=loginDocument.getElementsByTagName(type);
    	}
    	catch (Exception e){		
    		e.printStackTrace();
    	}
    	for(int i=0;i<loginList.getLength();i++)
    	{
    		Node loginnode=loginList.item(i);
    		if(loginnode.getNodeType()==loginnode.ELEMENT_NODE)
    		{
    			Element user=(Element) loginnode;    			
    			if(sessionUID.equals(user.getElementsByTagName("UserName").item(0).getTextContent()))
    				if(sessionPassword.equals(user.getElementsByTagName("Password").item(0).getTextContent()))
    				{
    					this.redirection=type.toLowerCase()+"success";
    					HttpSession session = ServletActionContext.getRequest().getSession();
    					session.setAttribute(type.toLowerCase()+"Id", sessionUID);
    					if("Y".equalsIgnoreCase(user.getElementsByTagName("FirstTimeUser").item(0).getTextContent()))
    						return "newuserredirection";
    					else
    						return redirection;
    				}
    				else
    				{
    					this.err="Invalid Username or Password";
    					return "errorpage";
    				}
    		}
    		
    	}
    	this.err="Invalid Username or Password";
		return "errorpage";
    }
    
    public void decryptPassword()
    {
    	
    }
    
    public String changePassword()
    {
    	return SUCCESS;
    }
    
    public String newPassword()
    {    	
    	if(newPassword.equals(confirmNewPassword))
    		if(newPassword.length()<8||newPassword.matches("[a-z]") || newPassword.matches("[A-Z]")|| newPassword.matches("[0-9]"))
    		{
    			this.err="Password must be contain 8 or more characters and should be combination of atleast one uppercase letter, one lowercase letter and one number";
    			return "errorpage";
    		}
    		else
    		{
    	    	NodeList loginList=null;
    		    try
    		    {
    		    	System.out.println("--->"+xmlfile);
    		    	File loginFile = new File(xmlfile);
    		    	DocumentBuilderFactory logindbf = DocumentBuilderFactory.newInstance();
    		    	DocumentBuilder logindb = logindbf.newDocumentBuilder();
    		    	Document loginDocument = logindb.parse(loginFile);
    		    	loginDocument.getDocumentElement().normalize();
    		    	loginList=loginDocument.getElementsByTagName(type);

    		   	for(int i=0;i<loginList.getLength();i++)
    	    	{
    	    		Node loginnode=loginList.item(i);
    	    		if(loginnode.getNodeType()==loginnode.ELEMENT_NODE)
    	    		{
    	    			Element user=(Element) loginnode;    			
    	    			if(sessionUID.equals(user.getElementsByTagName("UserName").item(0).getTextContent()))
    	    			{
    	    				user.getElementsByTagName("Password").item(0).setTextContent(newPassword);
    	    				user.getElementsByTagName("FirstTimeUser").item(0).setTextContent("N");
    	    				TransformerFactory transformerFactory = TransformerFactory.newInstance();
    	    	            Transformer transformer = transformerFactory.newTransformer();
    	    	            DOMSource source = new DOMSource(loginDocument);
    	    	            StreamResult result = new StreamResult(new File(xmlfile));
    	    	            transformer.transform(source, result);
    	    			}	
    	    		}
    	    	}
    	    	}
    	    	catch (Exception e){		
    	    		e.printStackTrace();
    	    	}
    		    return redirection;
    	}
    	else
    	{
    		return "errorpage";
    	}
    	//set new user to N
    	//replace password
    }
    
    public void setSessionUID(String sessionUID)
    {
    	this.sessionUID=sessionUID;
    }
    public String getSessionUID()
    {
    	return this.sessionUID;
    }
    public void setSessionPassword(String sessionPassword)
    {
    	this.sessionPassword=sessionPassword;
    }
    public String getSessionPassword()
    {
    	return this.sessionPassword;
    }
    public void setRedirection(String redirection)
    {
    	this.redirection=redirection;
    }
    public String getRedirection()
    {
    	return this.redirection;
    }
    public void setNewPassword(String newPassword)
    {
    	this.newPassword=newPassword;
    }
    public String getNewPassword()
    {
    	return this.newPassword;
    }
    public void setConfirmNewPassword(String confirmNewPassword)
    {
    	this.confirmNewPassword=confirmNewPassword;
    }
    public String getConfirmNewPassword()
    {
    	return this.confirmNewPassword;
    }
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getErr() {
		return err;
	}

	public void setErr(String err) {
		this.err = err;
	}
}