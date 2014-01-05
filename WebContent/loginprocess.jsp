<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.sree.LoginDao"%>  
	<jsp:useBean id="obj" class="com.sree.UserLoginBean"/>
	<jsp:setProperty property="*" name="obj"/>
	<%  
	boolean status = LoginDao.validate(obj);
	if(status){  
		out.println("You r successfully logged in");  
		session.setAttribute("session","TRUE");  
	} else {
		out.print("Sorry, email or password error");  
	%>  
	<jsp:include page="index.jsp"></jsp:include>  
	<%  
	}  
	%>
</body>
</html>