<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="images/icon/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="buyProduct.do" method="post">
	<input type="hidden" name="pid" value="${pdata.pid}"/>
	<input type="hidden" name="pname" value="${pdata.pname}"/>
	<input type="hidden" name="mid" value="${member.mid}"/>
		<table border="1">
			<tr>
				<td>제품명</td>
				<td>${pdata.pname}</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>${pdata.price} 원</td>
			</tr>
			<tr>
				<td>재고</td>
				<td>${pdata.pstock} 개</td>
			</tr>
			<tr>
				<td>설명</td>
				<td>${pdata.pcontent}</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><img src="${pdata.pimg }"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="구매하기"></td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="product.do">돌아가기</a>

</body>
</html>