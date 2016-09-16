<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Page</title>
</head>
<body>
<h2>Student Page......</h2>
    <div align="center">
        <table width="80%" border="1" style="border-collapse: collapse;">
            <tr>
                <!-- <th>FoodItemId</th> -->
                <th>FoodItemName</th>
                <th>QuadId</th>
                <!-- <th>RelativeAmount</th> -->
                <!-- <th>RelativeServingPlates</th> -->
                <th>ImageId</th>
                <!-- <th>Calories</th> -->
                <th>MealCourseId</th>
                <!-- <th>IsSelectedInMenu</th> -->
            </tr>
            <s:iterator value="listFoodItems" status="stat">
                <tr>
                   <!-- <td><s:property value="foodItemId" /></td> -->
                    <td><s:property value="foodItemName" /></td>
                    <td><s:property value="quadId" /></td>
                   <!-- <td><s:property value="relativeAmount" /></td> -->
                   <!-- <td><s:property value="relativeServingPlates" /></td> -->
                    <td><s:property value="imageId" /></td>
                   <!-- <td><s:property value="calories" /></td> -->
                    <td><s:property value="mealCourseId" /></td> 
                   <!-- <td><s:property value="isSelectedInMenu" /></td> -->
                </tr>
            </s:iterator>        
        </table>
    </div>
    
    <div align="center">
        <table width="80%" border="1" style="border-collapse: collapse;">
            <tr>
                <th>Dining Halls</th>
                <th>BreakFast</th>
            </tr>            
                               
           	<s:iterator value="listQuads" status="stat">
	           	<tr>
	           		<td>
	           			<s:property/>
	       			</td>
	       			<td>
	    			 	<s:iterator value="listBreakfastQuad10" status="stat">
	    			 		<s:property/>
    			 		</s:iterator>  
	    			 </td>
       			</tr>
       			<tr>	
       				<td>
	           			<s:property/>
	       			</td>        		
	    			 <td>
	    			 	<s:iterator value="listBreakfastQuad20" status="stat">
	    			 		<s:property/>
    			 		</s:iterator> 
   			 		 </td>
	    			 
   				</tr>
   				<tr>
   					<td>
	           			<s:property/>
	       			</td>	        		
	    			 <td>
	    			 	<s:iterator value="listBreakfastQuad30" status="stat">
	    			 		<s:property/>
    			 		</s:iterator>  
	    			 </td>
   				</tr>
   				<tr> 
   					<td>
	           			<s:property/>
	       			</td>
	    			 <td>
	    			 	<s:iterator value="listBreakfastQuad40" status="stat">
	    			 		<s:property/>
    			 		</s:iterator>  
	    			 </td>
   				</tr>		    			
	       			     		
           	</s:iterator>                 
            
                   
        </table>
    </div>
    
</body>
</html>