<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.util.Date,java.text.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test" var="snapshot" user="root"
		password="root" />

	<sql:query dataSource="${snapshot}" var="result"
		sql="SELECT * from Employees">
	</sql:query>
	<h1>SQL Query</h1>
	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.age}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<h2>SQL Update</h2>
	<sql:update dataSource="${snapshot}" var="count">
   INSERT INTO Employees VALUES (104, 2, 'Nuha', 'Ali');
</sql:update>

	<sql:query dataSource="${snapshot}" var="result">
   SELECT * from Employees;
</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.age}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<h3>SQL DELETE</h3>
	<c:set var="empId" value="104" />

	<sql:update dataSource="${snapshot}" var="count">
  DELETE FROM Employees WHERE Id = ?
  <sql:param value="${empId}" />
	</sql:update>

	<sql:query dataSource="${snapshot}" var="result">
   SELECT * from Employees;
</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.age}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<h4>SQL DateParam</h4>
	<%
		Date DoB = new Date("2001/12/16");
		int studentId = 100;
	%>

	<sql:update dataSource="${snapshot}" var="count">
   UPDATE Students SET dob = ? WHERE Id = ?
   <sql:dateParam value="<%=DoB%>" type="DATE" />
		<sql:param value="<%=studentId%>" />
	</sql:update>

	<sql:query dataSource="${snapshot}" var="result">
   SELECT * from Students;
</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>DoB</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.dob}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<h5>SQL Transaction</h5>
	
	<sql:transaction dataSource="${snapshot}">
		<sql:update var="count">
      UPDATE Students SET last = 'Ali' WHERE Id = 102
   </sql:update>
		<sql:update var="count">
      UPDATE Students SET last = 'Shah' WHERE Id = 103
   </sql:update>
		<sql:update var="count">
     INSERT INTO Students 
     VALUES (104,'Nuha', 'Ali', '2010/05/26');
   </sql:update>
	</sql:transaction>

	<sql:query dataSource="${snapshot}" var="result">
   SELECT * from Students;
</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>DoB</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.dob}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>