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

	<h1>상세 페이지</h1>
	<!-- 일지 상세 -->
	<form action="updateDiary.do" method="post">
	<input type="hidden" name="mid" value="${data.mid}">
		<table border="1">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="did" value="${data.did}" readonly></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="dtitle" value="${data.dtitle}"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="dwriter" value="${data.dwriter}"
					readonly></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="dcontent" value="${data.dcontent}"></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input type="text" name="mregion" value="${data.mregion }"></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><img name="uploadFile" src="images/${data.dimg}" width="300px"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="글 변경">
				<a href="recommandDiary.do?did=${data.did}&mid=${data.mid}">추천</a></td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<!-- 댓글 목록 -->
	<table border="1">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>내용</th>
			<th>작성일</th>
			<th>추천수</th>
		</tr>
		
		<c:forEach var="v" items="${rdatas}">
			<input type="hidden" name="did" value="${v.did}">
			<tr>
				<td>${v.rid}</td>
				<td>${v.rwriter}</td>
				<td>${v.rcontent}</td>
				<td>${v.transdate}</td>
				<td>${v.rrecommand}</td>
				<td><a href="updateReply.do?rid=${v.rid}&mid=${v.mid}&did=${v.did}">댓글 추천</a></td>
				<td><a href="deleteReply.do?rid=${v.rid}&did=${v.did}">댓글 삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	
<form action="insertReply.do" method="post">
	<input type="hidden" name="did" value="${data.did }">
	<input type="hidden" name="mid" value="${member.mid }">
	<table border="1">
		<tr>
			<td>작성자</td>
			<td><input type="text" name="rwriter" value="${member.mname}" readonly></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="rcontent"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="글 작성"></td>
		</tr>
	</table>
</form>

	<a href="main.do">메인페이지</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="deleteDiary.do?did=${data.did}&mid=${data.mid}">글 삭제</a>

</body>
</html>