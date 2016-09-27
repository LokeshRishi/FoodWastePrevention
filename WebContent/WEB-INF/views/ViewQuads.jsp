<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>VIEW QUADS</h1>
<hr>
<form action="ViewQuads.jsp">
	<select name="quads">
	<option>Indian Quad</option>
	<option>State Quad</option>
	<option>Dutch Quad</option>
	<option>Colonial Quad</option>
	</select>
	<br/><br/>
	<input type="submit" value="View Quads">
	<br/><br/>
	The Selected QuaD is:${param.quads}
</form>
</body>
</html>