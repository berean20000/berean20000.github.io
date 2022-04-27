<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="images/icon/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 페이지</h1>
	<hr>
	
	<form action="product.do" method="post">
		<table border="1">
			<tr>
				<td><input type="text" name="searchKeyword"> <input
					type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제품명</th>
			<th>가격</th>
			<th>재고</th>
		</tr>
		<c:forEach var="v" items="${datas}">
		<tr>
			<td><a href="productDetails.do?pid=${v.pid}">${v.pid}</a></td>
			<td>${v.pname}</td>
			<td>${v.price}</td>
			<td>${v.pstock}</td>
		</tr>
		</c:forEach>
	</table>
	
	<hr>
	
	<a href="main.do">처음으로</a>

</body>
</html>