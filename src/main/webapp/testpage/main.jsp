<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<link href="images/icon/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><spring:message code="message.main.logo"/></h1>
	<a href="main.do?lang=ko">
	<img src="images/icon/ko_icon.jpg" width="30px"></a> | 
	<a href="main.do?lang=jp">
	<img src="images/icon/jp_icon.jpg" width="30px"></a>
	<h3>${member.mname}<spring:message code="message.main.hello1"/>${day}<spring:message code="message.main.hello2"/></h3>
	<form action="mypage.do" method="post">
		<input type="hidden" name="mid" value="${member.mid}" readonly />
		<input type="hidden" name="mpw" value="${member.mpw}" />
		<input type="hidden" name="mname" value="${member.mname}" readonly />
		<input type="hidden" name="mregion" value="${member.mregion}" />
		<input type="hidden" name="memail" value="${member.memail}" />
		<input type="hidden" name="transdate" value="${member.transdate}" readonly />
		<input type="hidden" name="mpoint" value="${member.mpoint}" readonly />
	<input type="submit" value="<spring:message code='message.main.mypage'/>">
	</form>
	<!-- <a href="mypage.do?mid=${member.mid}">MYPAGE</a> -->
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="logout.do"><spring:message code="message.main.logout"/></a>
	
	<hr>
	
	<form action="main.do" method="post">
		<table border="1">
			<tr>
				<td><select name="searchCondition">
						<c:forEach var="v" items="${conMap}">
							<option value="${v.value }">${v.key}</option>
						</c:forEach>
				</select> <input type="text" name="searchKeyword"> <input
					type="submit" value="<spring:message code='message.main.search'/>"></td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<table border="1">
		<tr>
			<th><spring:message code="message.main.num"/></th>
			<th><spring:message code="message.main.title"/></th>
			<th><spring:message code="message.main.writer"/></th>
			<th><spring:message code="message.main.date"/></th>
			<th><spring:message code="message.main.comment"/></th>
			<th><spring:message code="message.main.recommand"/></th>
			<th><spring:message code="message.main.region"/></th>
		</tr>
		<c:forEach var="v" items="${datas}">
		<tr>
			<td><a href="details.do?did=${v.did}">${v.did}</a></td>
			<td>${v.dtitle}</td>
			<td>${v.dwriter}</td>
			<td>${v.transdate}</td>
			<td>${v.rcount}</td>
			<td>${v.drecommand}</td>
			<td>${v.mregion}</td>
		</tr>
		</c:forEach>
	</table>
	
	<hr>
	
	<iframe width="660" height="440" src="https://player.tubia.com/index.html?publisherid=02e74f10e0327ad868d138f2b4fdd6f0&title=Cigarette%20Killer&gameid=7503&langcode=en-us&url=https%3A%2F%2Fwww.miniplay.com%2Fgame%2Fcigarette-killer&href=https%3A%2F%2Fwww.miniplay.com%2Fgame%2Fcigarette-killer" scrolling="no"></iframe>
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/CHzPO9GTJ-Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/_8ZjoqoZoUg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/7MVNr4Ef02Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	
	<a href="insertBoard.jsp"><spring:message code="message.main.insert"/></a>
	<a href="product.do"><spring:message code="message.main.market"/></a>

</body>
</html>