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
	<form action="updateMember.do" method="post">
	<h1>회원정보</h1>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="mid"
					value="${member.mid}" readonly /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="mpw"
					value="${member.mpw}" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="mname"
					value="${member.mname}" readonly /></td>
			</tr>
			<tr>
				<td>거주지역</td>
				<td><input type="text" name="mregion"
					value="${member.mregion}" /></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td><input type="text" name="maddress"
					value="${member.maddress}" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="memail"
					value="${member.memail}" /></td>
			</tr>
			<tr>
				<td>금연시작일</td>
				<td><input type="text" name="transdate"
					value="${member.transdate}" readonly /></td>
			</tr>
			<tr>
				<td>보유포인트</td>
				<td><input type="text" name="mpoint"
					value="${member.mpoint}" readonly /></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="회원정보변경"></td>
			</tr>
		</table>
	</form>
	<hr>
	<h2>구매이력</h2>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>구매상품</th>
			<th>구매일</th>
		</tr>
		<c:forEach var="v" items="${datas}">
		<input type="hidden" name="did" value="${v.bid}">
			<tr>
				<td>${v.pname}</td>
				<td>${v.transdate}</td>
				<td><a href="deleteBuylist.do?bid=${v.bid}&mid=${member.mid}">구매내역 삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	
	<a href="main.do">메인페이지</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="deleteMember.do?mid=${member.mid}">회원탈퇴</a>

</body>
</html>