<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ksj" tagdir="/WEB-INF/tags" %>
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

	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

	<section class="u-clearfix u-section-1" id="carousel_a397">
		<div
			class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-sheet-1"
			style="height: auto; min-height: 720px;">
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
			<img class="u-image u-image-2" src="${pdata.pimg }" id="preview"
				data-image-width="788" data-image-height="684">
			<div
				class="u-container-style u-expanded-width-xs u-group u-white u-group-3">
				<div class="u-container-layout u-container-layout-3">
					<div class="u-form u-form-1">
						<form action="buyProduct.do" method="POST"
							class="u-clearfix u-form-spacing-10 u-inner-form"
							style="padding: 10px" name="insertDiary"
							enctype="multipart/form-data">
							<input type="hidden" name="mid" value="${member.mid }">
							<input type="hidden" name="pid" value="${pdata.pid }">
							<input type="hidden" name="pname" value="${pdata.pname }">

							<div class="u-container-layout u-container-layout-2">
								<h1 class="u-custom-font u-text u-text-1">${pdata.pname }</h1>
								<h6 class="u-align-right u-text u-text-2">${pdata.price } 원 <br> ${pdata.pstock } 개 남음</h6>
								<p class="u-text u-text-3">${pdata.pcontent }<br>
								</p>
							</div>
							
							<div class="u-align-center u-form-group u-form-submit">
							<ksj:productdetail type="buy" />
							<!-- 
							<a href="#"
							class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">구매하기</a>
							-->
							<input type="submit" value="submit" class="u-form-control-hidden">
					</div>
						</form>
					</div>


					
				</div>
			</div>
		</div>
		</div>
	</section>

	<!-- footer-start -->
	<jsp:include page="common/footer.jsp" />

</body>
</html>