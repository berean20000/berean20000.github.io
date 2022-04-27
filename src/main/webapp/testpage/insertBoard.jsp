<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="images/icon/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
// 이미지 미리보기
function preview(input) {
     if (input.files && input.files[0]) {
       var reader = new FileReader();
       reader.onload = function(e) {
         document.getElementById('preview').src = e.target.result;
       };
       reader.readAsDataURL(input.files[0]);
     } else {
       document.getElementById('preview').src = "";
     }
   }
</script>

<h1>작성 페이지</h1>

<form action="insertDiary.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="mid" value="${member.mid }">
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="dtitle"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="dwriter" value="${member.mname}" readonly></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="dcontent"></td>
		</tr>
		<tr>
			<td>지역</td>
			<td><input type="text" name="mregion" value="${member.mregion }"></td>
		</tr>
		<tr>
			<td>파일 업로드</td>
			<td><input type="file" name="uploadFile" onchange="preview(this);" accept="image/*" ></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="글 작성"></td>
		</tr>
	</table>
</form>

<img id="preview" width="300px" />
<br>

<a href="main.do">메인페이지</a>

</body>
</html>