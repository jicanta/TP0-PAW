<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>

<%@ attribute name="name"  required="true" %>
<%@ attribute name="price" required="true" %>  <%-- Number or String --%>
<%@ attribute name="date"  required="true" %>  <%-- String yyyy-MM-dd or Date --%>

<div class="card">
    <div class="card-title"><c:out value="${name}"/></div>
    <div class="card-meta">
        <paw:price amount="${price}" symbol="$" />
        <span class="text-muted">·</span>
        <span class="text-muted">Available: <paw:date value="${date}"/></span>
    </div>

</div>
