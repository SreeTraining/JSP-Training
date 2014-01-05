<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:catch var="exception">
		<%
			int x = 5 / 0;
		%>
	</c:catch>
	<c:if test="${exception ne null}">
		<p>
			Exception is : ${exception} <br /> Exception Message:
			${exception.message}
		</p>
	</c:if>
</body>
</html>