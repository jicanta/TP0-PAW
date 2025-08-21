<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="<c:url value="/css/components.css"/>" />
</head>
<body>
    <h2><spring:message code="user.greeting" arguments="${user.userName}"/></h2>
    <h5><spring:message code="user.id" arguments="${user.id}"/></h5>
</body>
</html>