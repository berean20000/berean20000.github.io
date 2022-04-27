<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link href="images/icon/favicon.ico" rel="shortcut icon"
	type="image/x-icon">
<!DOCTYPE html>
<html lang="ko" style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="​Anytime Fitness">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>diaryinsert</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/diaryinsert.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 4.8.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">



<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/Logo_220418.png"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="diaryinsert">
<meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode">

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

	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

	<section class="u-clearfix u-section-1" id="carousel_a397">
		<div
			class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-sheet-1" style="height:auto; min-height:720px;">
			<div
				class="u-container-style u-group u-image u-image-tiles u-image-1"
				data-image-width="64" data-image-height="80">
				<div class="u-container-layout u-container-layout-1"></div>
			</div>
			<div
				class="u-align-left u-container-style u-group u-palette-1-light-1 u-shape-rectangle u-group-2">
				<div class="u-container-layout u-container-layout-2"></div>
			</div>
			<div class="u-palette-1-base u-shape u-shape-rectangle u-shape-1"></div>
			<img class="u-image u-image-2" src="images/no_image.png" id="preview"
				data-image-width="788" data-image-height="684">
			<div
				class="u-container-style u-expanded-width-xs u-group u-white u-group-3">
				<div class="u-container-layout u-container-layout-3">
					<div class="u-form u-form-1">
						<form action="insertDiary.do" method="POST" class="u-clearfix u-form-spacing-10 u-inner-form"
							style="padding: 10px" name="insertDiary" enctype="multipart/form-data" >
							<input type="hidden" name="mid" value="${member.mid }">
							<div class="u-form-group u-label-left u-form-group-1">
								<label for="text-663b" class="u-label">제목</label> <input
									type="text" placeholder="제목 입력" id="text-663b" name="dtitle"
									class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
							</div>
							<div class="u-form-group u-form-name u-label-left">
								<label for="name-e2a4" class="u-label">작성자</label> <input
									type="text" id="name-e2a4" name="dwriter"
									class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
									value="${member.mname}" readonly>
							</div>
							<div class="u-form-group u-form-message u-label-left">
								<label for="email-e2a4" class="u-label">내용</label>
								<textarea placeholder="내용 입력" id="email-e2a4" name="dcontent"
									class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
									required="required"></textarea>
							</div>
							<div class="u-form-group u-label-left u-form-group-4">
								<label for="text-e637" class="u-label">지역</label> <input
									id="text-e637" name="mregion"
									class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
									type="text" value="${member.mregion }">
							</div>
							<div class="u-form-group u-label-left u-form-group-5">
								<label for="text-c394" class="u-label">파일업로드</label> <input
									type="file" name="uploadFile" onchange="preview(this);"
									accept="image/*"
									class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
							</div>
							<div class="u-align-center u-form-group u-form-submit">
								<a href="#"
									class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">글등록</a>
								<input type="submit" value="submit"
									class="u-form-control-hidden">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer-start -->
	<jsp:include page="common/footer.jsp" />

</body>
</html>