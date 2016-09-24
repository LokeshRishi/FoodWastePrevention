<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>   
<%@taglib  prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@taglib  prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Page</title>
</head>
<body>
<h2>Student Page</h2>
    <div align="center">
        <!-- 
        <table width="80%" border="1" style="border-collapse: collapse;">
            <tr>
                <th>FoodItemName</th>
                <th>QuadId</th>
                <th>ImageId</th>
                <th>MealCourseId</th>
            </tr>
            <s:iterator value="listFoodItems" status="stat">
                <tr>
                    <td><s:property value="foodItemName" /></td>
                    <td><s:property value="quadInfo.quadId" /></td>
                    <td><s:property value="images.imageId" /></td>
                    <td><s:property value="mealCourse.mealCourseId" /></td> 
                </tr>
            </s:iterator>        
        </table>
         -->
    
    <s:iterator value="quadNames" status="stat">
             	<s:property />
     </s:iterator> 
     
     <s:iterator value="mealCourseNames" status="stat">
             	<s:property />
     </s:iterator> 
    
    <table width="80%" border="1" style="border-collapse: collapse;">
	  <tr>
	    <th colspan="2">Indian</th>
	  </tr>
	  <tr>
	    <td>BreakFast</td>
	    <td>
	    	<s:iterator value="allFoodItems.Indian.Breakfast" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>  
             <br>                  
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Lunch</td>
	    <td>
	    	<s:iterator value="allFoodItems.Indian.Lunch" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>  
             <br>                  
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Dinner</td>
	    <td>
	    	<s:iterator value="allFoodItems.Indian.Dinner" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator> 
             <br>                   
        	</s:iterator>
	    </td>
	  </tr>
	</table>
	
	<br>
	
	 <table width="80%" border="1" style="border-collapse: collapse;">
	  <tr>
	    <th colspan="2">Dutch</th>
	  </tr>
	  <tr>
	    <td>BreakFast</td>
	    <td>
	    	<s:iterator value="allFoodItems.Dutch.Breakfast" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator> 
             <br>                   
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Lunch</td>
	    <td>
	    	<s:iterator value="allFoodItems.Dutch.Lunch" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>   
             <br>                 
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Dinner</td>
	    <td>
	    	<s:iterator value="allFoodItems.Dutch.Dinner" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>   
             <br>                 
        	</s:iterator>
	    </td>
	  </tr>
	</table>
	<br>
	<table width="80%" border="1" style="border-collapse: collapse;">
	  <tr>
	    <th colspan="2">Colonial</th>
	  </tr>
	  <tr>
	    <td>BreakFast</td>
	    <td>
	    	<s:iterator value="allFoodItems.Colonial.Breakfast" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator> 
             <br>                   
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Lunch</td>
	    <td>
	    	<s:iterator value="allFoodItems.Colonial.Lunch" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>   
             <br>                 
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Dinner</td>
	    <td>
	    	<s:iterator value="allFoodItems.Colonial.Dinner" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>   
             <br>                 
        	</s:iterator>
	    </td>
	  </tr>
	</table>
	<br>
	<table width="80%" border="1" style="border-collapse: collapse;">
	  <tr>
	    <th colspan="2">State</th>
	  </tr>
	  <tr>
	    <td>BreakFast</td>
	    <td>
	    	<s:iterator value="allFoodItems.State.Breakfast" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator> 
             <br>                   
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Lunch</td>
	    <td>
	    	<s:iterator value="allFoodItems.State.Lunch" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>   
             <br>                 
        	</s:iterator>
	    </td>
	  </tr>
	  <tr>
	    <td>Dinner</td>
	    <td>
	    	<s:iterator value="allFoodItems.State.Dinner" var="myvar" status="stat">
             <s:iterator value="myvar" status="stat">
             	<s:property />
             </s:iterator>   
             <br>                 
        	</s:iterator>
	    </td>
	  </tr>
	</table>
    
    </div>
    
    
    
</body>
</html>