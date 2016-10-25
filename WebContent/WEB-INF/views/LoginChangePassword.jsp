<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<s:property value="%{err}"/>
<s:form action="LoginChangePasswordSubmit" method='post'>
<s:password label='New Password' key='newPassword'/>
<s:password label='Confirm New Password' key="confirmNewPassword" />
<s:submit value="Submit" name='Submit'/>
</s:form>
</body>
</html>