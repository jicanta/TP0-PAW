<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Demo Componentes</title>
    <link rel="stylesheet" href="<c:url value='/css/components.css'/>">
</head>
<body>
<h2>Hello <c:out value="${name.userName}"/>!</h2>
<paw:text variant="h1" text="Demo Componentes JSP + Spring MVC"/>
<paw:text variant="h3" text="Botones"/>
<paw:button text="Primario" cssClass="btn-primary" size="md"/>
<paw:button text="Grande" cssClass="btn-primary" size="lg"/>
<paw:button text="Deshabilitado" cssClass="btn-primary" disabled="true"/>
<paw:button text="Chico" size="sm" cssClass="btn-primary"/>
<paw:button text="Mediano" cssClass="btn-primary"/>
<paw:button text="Grande" size="lg" cssClass="btn-primary"/>

<paw:text variant="h3" text="Card de Item"/>
<paw:item-card name="${itemName}" price="${itemPrice}" date="${itemDate}"/>
<paw:item-card name="${itemName2}" price="${itemPrice2}" date="${itemDate2}" />

<paw:text variant="h3" text="Alert" />
<paw:alert text="Información básica." type="info"/>
<paw:alert text="¡Guardado con éxito!" type="success"/>
<paw:alert text="¡Atención: faltan campos obligatorios!" type="warning"/>
<paw:alert text="Error al guardar." type="danger"/>

<h2>Register</h2>
<c:url value="/create" var="postPath"/>
<form:form modelAttribute="registerForm" action="${postPath}" method="post">
    <div>
        <form:label path="username">Username: </form:label>
        <form:input type="text" path="username"/>
        <form:errors path="username" cssClass="error" element="p"/>
    </div>
    <div>
        <form:label path="password">Password: </form:label>
        <form:input type="password" path="password" />
        <form:errors path="password" cssClass="error" element="p"/>
    </div>
    <div>
        <form:label path="repeatPassword">Repeat password: </form:label>
        <form:input type="password" path="repeatPassword"/>
        <form:errors path="repeatPassword" cssClass="error" element="p"/>
    </div>
    <div>
        <input type="submit" value="Register!"/>
    </div>
</form:form>
</body>
</html>
