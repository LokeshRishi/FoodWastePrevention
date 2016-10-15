<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>VIEW QUADS</h1>
<hr>

<s:form action="urlTagAction3" namespace="/">
<h2>
	<s:select label="SelectName Of The Quad" headerKey="-1" headerValue="Select Search Engines"	list="searchEngine"	name="yourQuadSelection" value="defaultSearchEngine" />
</h2>
	<br/><br/>
	<s:submit value="submit" name="View Quads" />
	<br/><br/>
	<!-- The Selected QuaD is:<s:property value="yourQuadSelection"/> -->
</s:form>
</body>
</html>