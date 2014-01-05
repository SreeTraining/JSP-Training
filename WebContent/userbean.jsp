<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Bean Example</title>
</head>
<body>
	<jsp:useBean id="user" class="com.sree.User" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	Record:<br/>
	<jsp:getProperty property="name" name="user"/><br/>
	<jsp:getProperty property="password" name="user"/><br/>
	<jsp:getProperty property="email" name="user"/><br/>
	<a href="seconduserbean.jsp">Visit Page</a> 
</body>
</html>