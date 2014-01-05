<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>JSTL fmt:setTimeZone Tag</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date()%>" />
<p>Date in Current Zone: <fmt:formatDate value="${now}" 
             type="both" timeStyle="long" dateStyle="long" /></p>
<p>Change Time Zone to GMT-8</p>
<fmt:setTimeZone value="GMT-8" />
<p>Date in Changed Zone: <fmt:formatDate value="${now}" 
             type="both" timeStyle="long" dateStyle="long" /></p>
</body>
</html>