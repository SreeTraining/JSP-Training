<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Books Info:</h3>
	<c:import var="bookInfo" url="http://localhost:8585/JSPExamples/books.xml" />

	<x:parse xml="${bookInfo}" var="output" />
	<b>The title of the first book is</b>:
	<x:out select="$output/books/book[1]/name" />
	<br>
	<b>The price of the second book</b>:
	<x:out select="$output/books/book[2]/price" />
</body>
</html>