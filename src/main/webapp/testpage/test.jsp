<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메인 페이지</h1>
	<h3>${member.mname}님 반갑습니다. 금연 ${day}일차입니다.</h3>
	<form action="mypage.do" method="post">
		<input type="hidden" name="mid" value="${member.mid}" readonly />
		<input type="hidden" name="mpw" value="${member.mpw}" />
		<input type="hidden" name="mname" value="${member.mname}" readonly />
		<input type="hidden" name="mregion" value="${member.mregion}" />
		<input type="hidden" name="memail" value="${member.memail}" />
		<input type="hidden" name="transdate" value="${member.transdate}" readonly />
		<input type="hidden" name="mpoint" value="${member.mpoint}" readonly />
	<input type="submit" value="MYPAGE">
	</form>
	<!-- <a href="mypage.do?mid=${member.mid}">MYPAGE</a> -->
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="logout.do">LOGOUT</a>
	
	<hr>
	
	<form action="main.do" method="post">
		<table border="1">
			<tr>
				<td><select name="searchCondition">
						<c:forEach var="v" items="${conMap}">
							<option value="${v.value }">${v.key}</option>
						</c:forEach>
				</select> <input type="text" name="searchKeyword"> <input
					type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>댓글수</th>
			<th>추천수</th>
			<th>지역</th>
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
	
	<a href="insertBoard.jsp">글 등록</a>
	<a href="product.do">제품보기</a>

</body>
</html>