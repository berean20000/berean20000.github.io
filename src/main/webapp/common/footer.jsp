<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOOTER</title>
</head>
<body>

	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-8690">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="main.do"
				class="u-image u-logo u-image-1" data-image-width="300"
				data-image-height="200"> <img src="images/Logom_220410.png"
				class="u-logo-image u-logo-image-1">
			</a>
			<p class="u-align-left u-small-text u-text u-text-variant u-text-1">
				<spring:message code="message.footer.content"/>
				<!-- 뭉게노 고객센터 010-4764-0191 (평일 09:00~18:00, 주말/공휴일 휴무<br>이메일
				berean2000@gmail.com<br>서울특별시 관악구 솔밭로 낙성대역 6번 출구 앞 -->
			</p>
		</div>
	</footer>

</body>
</html>