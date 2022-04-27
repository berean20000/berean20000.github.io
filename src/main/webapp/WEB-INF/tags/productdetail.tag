<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="type" %>

<c:if test="${pdata.pstock==0}">
<c:choose>
<c:when test="${type=='buy'}">
	<h6 style="color:gray"><strong>품절</strong></h6>
</c:when>
</c:choose>
</c:if>

<c:if test="${pdata.pstock!=0}">

<c:if test="${member.mid!=null}">
<c:choose>
<c:when test="${type=='buy'}">
	<a href="#" class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">구매하기</a>
</c:when>
</c:choose>
</c:if>

<c:if test="${member.mid==null}">
<c:choose>
	<c:when test="${type=='buy'}">	
</c:when>
</c:choose>
</c:if>
</c:if>