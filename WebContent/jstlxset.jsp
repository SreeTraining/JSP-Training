<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
	<h3>Books Info:</h3>

	<c:set var="xmltext">
		<books> <book> <name>Padam History</name> <author>ZARA</author>
		<price>100</price> </book> <book> <name>Great Mistry</name> <author>NUHA</author>
		<price>2000</price> </book> </books>
	</c:set>

	<x:parse xml="${xmltext}" var="output" />
	<x:set var="fragment" select="$output//book" />
	<b>The price of the second book</b>:
	<c:out value="${fragment}" />
</body>
</html>