package com.albany.edu.fwp.action;

import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.File;

import com.albany.edu.fwp.dao.FoodItemsDAO;
import com.albany.edu.fwp.dao.StudentDAO;
import com.albany.edu.fwp.dao.studentXML;
import com.albany.edu.fwp.model.Student;
//import com.albany.edu.fwp.model.QuadInfo;
//import com.albany.edu.fwp.model.Student;
import com.opensymphony.xwork2.ActionSupport;

import javassist.convert.Transformer;

public class SelectAction extends ActionSupport{
	//private studentXML studentXML;
	//private List<String> liststu;
	private Student student;
	private StudentDAO studentdao;
	private List<String> comboMeals = new ArrayList<String>();
	
	//public void setstudentXML(studentXML studentXML) {
		//this.studentXML = studentXML;
	//}
	public void setStudent(Student student){
		this.student=student;
	}
	public void setStudentDAO(StudentDAO studentdao){
		this.studentdao=studentdao;
	}
	
	

	public String execute() {
		//liststu=studentXML.list();
		try {
			File fXmlFile = new File("C:/Users/manish chandra/Documents/student.xml");
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);
			create();
			Document doc1 = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new File("C:/Users/manish chandra/Documents/loginproject.xml"));
			    
			
			
			//File login = new File("C:/Users/manish chandra/Documents/login1.xml");
			//Document doc1 = dBuilder.parse(login);
			

			//optional, but recommended
			//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
			doc.getDocumentElement().normalize();
			doc1.getDocumentElement().normalize();
			

			//System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("studentid");
			//NodeList nList1 = doc1.getElementsByTagName("eachstudent");

			//System.out.println("----------------------------");

			for (int temp = 0; temp < nList.getLength(); temp++) {

				Node nNode = nList.item(temp);
			
				

				//System.out.println("\nCurrent Element :" + nNode.getNodeName());

				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;

					System.out.println("studentid : " + eElement.getAttribute("id"));
					System.out.println("First Name : " + eElement.getElementsByTagName("name").item(0).getTextContent());
					//System.out.println("Last Name : " + eElement.getElementsByTagName("lastname").item(0).getTextContent());
					System.out.println("Nick Name : " + eElement.getElementsByTagName("address").item(0).getTextContent());
					System.out.println("Salary : " + eElement.getElementsByTagName("year").item(0).getTextContent());
					
					Element dataTag=doc1.getDocumentElement();
					Element studenttag=(Element) dataTag.getElementsByTagName("student").item(0);
					Element eachstudent=doc1.createElement("eachstudent");
					Element username=doc1.createElement("username");
					username.setTextContent(eElement.getAttribute("id"));
					Element password=doc1.createElement("password");
					password.setTextContent(eElement.getElementsByTagName("name").item(0).getTextContent());
					eachstudent.appendChild(username);
					eachstudent.appendChild(password);
					studenttag.appendChild(eachstudent);
					
					//comboMeals = new ArrayList<String>();
					comboMeals.add(eElement.getAttribute("id"));
					comboMeals.add(eElement.getElementsByTagName("name").item(0).getTextContent());
					comboMeals.add(eElement.getElementsByTagName("address").item(0).getTextContent());
					comboMeals.add(eElement.getElementsByTagName("year").item(0).getTextContent());
					student.setName(eElement.getElementsByTagName("name").item(0).getTextContent());
					student.setStudentEmail(eElement.getElementsByTagName("address").item(0).getTextContent());
					//student.setStudentId(eElement.getAttribute("id"));
					student.setYear(Integer.parseInt((eElement.getElementsByTagName("year").item(0).getTextContent())));
					//studentdao.insert(student);
					System.out.println("comboMeals -------------> ");
					TransformerFactory transformerFactory = TransformerFactory.newInstance();
			        javax.xml.transform.Transformer transformer = transformerFactory.newTransformer();
			        DOMSource source = new DOMSource(doc1);
			        StreamResult result = new StreamResult(new File("C:/Users/manish chandra/Documents/loginproject.xml"));
			        transformer.transform(source, result);
				}
			}
		} catch (Exception e) {
					e.printStackTrace();
				    }
		//return comboMeals;
		
		return SUCCESS;
	}

	private void create() throws ParserConfigurationException, TransformerException {
		// TODO Auto-generated method stub
		File f = new File("C:/Users/manish chandra/Documents/loginproject.xml");
		if(!f.exists()&&!f.isDirectory()){
		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
        // root elements
        Document doccreate = docBuilder.newDocument();
        Element rootElement = doccreate.createElement("Users");
        doccreate.appendChild(rootElement);
        
        Element students = doccreate.createElement("student");
        rootElement.appendChild(students);
        //Element Username = doccreate.createElement("UserName");
        //students.appendChild(Username);
        //Element Pass = doccreate.createElement("Password");
        //students.appendChild(Pass);
        Element manager = doccreate.createElement("manager");
        rootElement.appendChild(manager);
        //Element Username = doccreate.createElement("UserName");
       // manager.appendChild(Username);
        //Element Pass = doccreate.createElement("Password");
        //manager.appendChild(Pass);
        Element admin = doccreate.createElement("admin");
        rootElement.appendChild(admin);
        //Element Username = doccreate.createElement("UserName");
        //admin.appendChild(Username);
        //Element Pass = doccreate.createElement("Password");
        //admin.appendChild(Pass);
        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        javax.xml.transform.Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(doccreate);
        StreamResult result = new StreamResult(new File("C:/Users/manish chandra/Documents/loginproject.xml"));
        transformer.transform(source, result);
		}
		
	}
	public String display() {
		return NONE;
	}
	public List<String> getComboMeals() {
		return comboMeals;
	}
}
