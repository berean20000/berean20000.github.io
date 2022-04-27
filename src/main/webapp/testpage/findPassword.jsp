<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="searchPassword.do" method="post">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="mid" value="${member.mid}"/></td>
		</tr>
			<td colspan="2" align="right"><input type="submit" value="임시비밀번호 발송"></td>
		</tr>
	</table>
</form>

</body>
</html>