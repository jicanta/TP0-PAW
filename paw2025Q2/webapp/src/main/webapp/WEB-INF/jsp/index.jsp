<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>
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
<paw:alert text="Informacion basica." type="info"/>
<paw:alert text="Guardado con exito!" type="success"/>
<paw:alert text="Atencion: faltan campos obligatorios." type="warning"/>
<paw:alert text="Error al guardar." type="danger"/>
</body>
</html>
