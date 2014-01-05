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
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<c:out value="${fn:length('Hello')}"></c:out><br/>
	<c:out value="${fn:substring('Hello',1,3)}"></c:out><br/>
	<c:out value="${fn:trim(' Hello ')}"></c:out><br/>
	<c:out value="${fn:replace('Hello Sree','Sree','Bunty')}"></c:out><br/>
	<c:out value="${fn:contains('Hello', 'el')}"></c:out>
	<c:set var="array1" value="${fn:split('Hi My name is Sree', ' ')}"></c:set>
  	<c:out value="${fn:join(array1, '-')}"></c:out><br/>
  	<c:out value="${fn:indexOf('Hello', 'llo')}"></c:out><br/>
  	<c:set var="array1" value="${fn:startsWith('Hi My name is Sree', 'Hi ')}"></c:set>
  	<c:out value="${array1 }"></c:out><br/>
  	<c:set var="array1" value="${fn:endsWith('Hi My name is Sree', 'Sree')}"></c:set>
  	<c:out value="${array1}"></c:out><br/>
  	<c:out value="${fn:toLowerCase('Sree Choudary')}"/><br/>
  	<c:out value="${fn:toUpperCase('Sree Choudary')}"/><br/>
  	<c:out value="${fn:containsIgnoreCase('SreeChoudary', 'DAR')}"/><br/>
  	<c:set var="testString" value="This is <b>JSTL escapeXML example</b> in this JSTL function tutorial."></c:set>
	Without escapeXml function : ${testString}
	<br/>
	Using escapeXml function : ${fn:escapeXml(testString)} --%>
</body>
</html>