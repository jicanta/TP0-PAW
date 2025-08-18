<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="variant" required="true" %>
<%@ attribute name="text" required="true" %>
<%@ attribute name="cssClass" required="false" %>

<c:set var="cls" value="${not empty cssClass ? cssClass : ''}" />
<c:choose>
    <c:when test="${variant eq 'h1'}"><h1 class="${cls}">${text}</h1></c:when>
    <c:when test="${variant eq 'h2'}"><h2 class="${cls}">${text}</h2></c:when>
    <c:when test="${variant eq 'h3'}"><h3 class="${cls}">${text}</h3></c:when>
    <c:when test="${variant eq 'h4'}"><h4 class="${cls}">${text}</h4></c:when>
    <c:when test="${variant eq 'p'}"><p class="${cls}">${text}</p></c:when>
    <c:otherwise><span class="${cls}">${text}</span></c:otherwise>
</c:choose>
