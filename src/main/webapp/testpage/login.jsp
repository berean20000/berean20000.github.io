<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<link href="images/icon/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="images/logo/Logo.png" width="150px">

<form action="login.do" method="post">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="mid" value="${member.mid}"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="mpw" value="${member.mpw}"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="로그인"></td>
		</tr>
	</table>
</form>
<hr> 
<div id="outputid"></div>
<a href="signup.jsp">회원가입</a> | <a href="findPassword.jsp">비밀번호 찾기</a>

</body>
</html>