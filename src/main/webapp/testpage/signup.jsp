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
	<form action="insertMember.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="mid" required /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="mpw" required /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="mname" required /></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><select name="mregion" >
					<option selected>--지역선택--</option>
					<option>서울</option>
					<option>경기</option>
					<option>강원</option>
					<option>충남</option>
					<option>충북</option>
					<option>전남</option>
					<option>전북</option>
					<option>경남</option>
					<option>경북</option>
					<option>제주</option>
				</select></td>
			</tr>
			<tr>
				<td>지역상세</td>
				<td>
					<div class="maddr">
						<input type="text" id="maddress" name="maddress" placeholder="주소">
						<input type="button" class=addr-btn onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
						<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
					</div>
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="memail" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="회원가입"></td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="login.jsp">처음으로</a>
	
	   <!-- 주소 API -->
   <!-- 이 부분은 건드리지 말 것 -->
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e60dadda7b68bff55723b386ed35f41c&libraries=services"></script>
   <script>
       var mapContainer = document.getElementById('map'), // 지도를 표시할 div
           mapOption = {
               center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
               level: 5 // 지도의 확대 레벨
           };
   
       //지도를 미리 생성
       var map = new daum.maps.Map(mapContainer, mapOption);
       //주소-좌표 변환 객체를 생성
       var geocoder = new daum.maps.services.Geocoder();
       //마커를 미리 생성
       var marker = new daum.maps.Marker({
           position: new daum.maps.LatLng(37.537187, 127.005476),
           map: map
       });
   
   
       function sample5_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   var addr = data.address; // 최종 주소 변수
   
                   // 주소 정보를 해당 필드에 넣는다.
                   document.getElementById("maddress").value = addr;
                   // 주소로 상세 정보를 검색
                   geocoder.addressSearch(data.address, function(results, status) {
                       // 정상적으로 검색이 완료됐으면
                       if (status === daum.maps.services.Status.OK) {
   
                           var result = results[0]; //첫번째 결과의 값을 활용
   
                           // 해당 주소에 대한 좌표를 받아서
                           var coords = new daum.maps.LatLng(result.y, result.x);
                           // 지도를 보여준다.
                           mapContainer.style.display = "block";
                           map.relayout();
                           // 지도 중심을 변경한다.
                           map.setCenter(coords);
                           // 마커를 결과값으로 받은 위치로 옮긴다.
                           marker.setPosition(coords)
                       }
                   });
               }
           }).open();
       }
   </script>
   <!-- API 끝 -->
</body>
</html>