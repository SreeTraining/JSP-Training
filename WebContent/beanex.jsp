<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Bean Example.</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.sree.Calculator"></jsp:useBean>
	<%
	int m = obj.cube(5);
	out.print("Cube of 5 is: " + m);
	%>
</body>
</html>