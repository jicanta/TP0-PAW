<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="text" required="true" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="dismissible" required="false" type="java.lang.Boolean" %>

<c:set var="kind" value="${not empty type ? type : 'info'}" />
<div class="alert alert-${kind}">
    <c:if test="${dismissible}"><span aria-hidden="true" style="float:right;cursor:pointer">×</span></c:if>
    ${text}
</div>