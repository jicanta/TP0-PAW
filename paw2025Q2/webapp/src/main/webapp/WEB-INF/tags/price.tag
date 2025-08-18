<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="amount" required="true" %>
<%@ attribute name="symbol" required="false" %>

<span class="price">
  <c:if test="${not empty symbol}"><c:out value="${symbol}"/></c:if>
  <c:out value="${amount}"/>
</span>
