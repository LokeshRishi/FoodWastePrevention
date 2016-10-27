/**
 * Feedback Action class to email feedback
 * FoodWastePrevention. All rights reserved.
 */
package com.albany.edu.fwp.action; 


import java.util.Properties;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


 
public class FeedBackAction extends ActionSupport {
	private HttpServletRequest request;
	private HttpSession httpSession;
	
    public String execute() {
    	
    	String name;
    	String phone;
        String email;
        String msg;
        
    	request = ServletActionContext.getRequest();
    	httpSession=request.getSession(false); 
    	
    	name=request.getParameter("name").toString();     	
    	phone=request.getParameter("tel").toString();    	
    	email=request.getParameter("email").toString();     	
    	msg=request.getParameter("msg").toString();
    	System.out.println("Is Request Param empty:----> "+request.getParameterMap().keySet());
        String to=email;//change accordingly  
         
         //Get the session object  
         Properties props = new Properties();  
         props.put("mail.smtp.host", "smtp.gmail.com");  
         props.put("mail.smtp.socketFactory.port", "465");  
         props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  
         props.put("mail.smtp.auth", "true");  
         props.put("mail.smtp.port", "465");  
          
         //https://www.google.com/settings/security/lesssecureapps
         Session session = Session.getDefaultInstance(props,  
          new javax.mail.Authenticator() {  
          protected PasswordAuthentication getPasswordAuthentication() {  
          return new PasswordAuthentication("foodwastagepreventiont5@gmail.com","Fwp@1234");//change accordingly  
          }  
         });  
          
         //compose message  
         try {  
          MimeMessage message = new MimeMessage(session);  
          message.setFrom(new InternetAddress("foodwastagepreventiont5@gmail.com"));//change accordingly  
          message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
          message.setSubject("Feedback");  
          String body="";
          body = "Name: "   + name + "\n" +
        		 "Phone: "  + phone + "\n" +
        		 "Message: "+ msg;
        		  
          message.setText(body);  
            
          //send message  
          Transport.send(message);            
          System.out.println("message sent successfully");  
          
         } 
         catch (MessagingException e) 
         {
        	 
        	 httpSession.setAttribute("emailStatus", "Feedback Not Sent");  
        	 return "error";
         }  
          
         httpSession.setAttribute("emailStatus", "Feedback Sent Successfully.");
        return SUCCESS;
    }
    
    

	
}