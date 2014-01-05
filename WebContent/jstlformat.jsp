<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<fmt:formatNumber value="4578.87" type="NUMBER" minFractionDigits="3"></fmt:formatNumber><br/>
	<fmt:formatNumber value="4578.8743" type="NUMBER" maxFractionDigits="2"></fmt:formatNumber><br/>
	<fmt:formatNumber value="8.8743" type="NUMBER" minIntegerDigits="2"></fmt:formatNumber><br/>
	<fmt:formatNumber value="4578.8743" type="NUMBER" maxIntegerDigits="2"></fmt:formatNumber><br/>
	<fmt:setLocale value="en_US"/>
    <fmt:formatNumber value="4578.59" type="CURRENCY"></fmt:formatNumber><br/>
    <fmt:formatNumber value="0.785" type="PERCENT" minFractionDigits="3"></fmt:formatNumber><br/>
    <fmt:parseNumber value="456.1432" var="test" integerOnly="TRUE" type="NUMBER"></fmt:parseNumber>
    <c:out value="${test}"></c:out><br/>
     <!-- Setting Locale to US -->
    <fmt:setLocale value="en_US"/>
    <fmt:formatNumber value="0.452" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber><br/>
    <br/>
    <!-- Setting Locale to UK -->
    <fmt:setLocale value="en_GB"/>
    <fmt:formatNumber value="0.452" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber><br/>
 	<br/>
 	<!-- Setting Locale to India -->
    <fmt:setLocale value="en_IN"/>
    <fmt:formatNumber value="0.452" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber>
</body>
</html>