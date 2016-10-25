<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
<h2>Login Page</h2>
<s:property value="%{err}"/>
<s:form action="loginsubmit" method='post'>
<s:textfield label='Username' key='sessionUID'/>
<s:password label='Password' key='sessionPassword'/>
<s:radio label="User Type" name='type' list="{'Manager','Student','Admin'}" key='type'/>
<s:submit value="Submit" name='Submit'/>
</s:form>

</body>
</html>