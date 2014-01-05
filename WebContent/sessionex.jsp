<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Scriptlet Example</title>
</head>
<body>
	<%
		String name = request.getParameter("uname");
		out.println("Welcome " + name);
		
		session.setAttribute("user", name);
		
	%>
	<a href="sessionlink.jsp">second jsp page</a>
</body>
</html>