<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link href="images/icon/favicon.ico" rel="shortcut icon"
	type="image/x-icon">
<!DOCTYPE html>
<html lang="ko" style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="$10 Off withEmail Signup">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>product</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/product.css" media="screen">
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
<meta property="og:title" content="product">
<meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode">

	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

	<section class="u-clearfix u-section-1" id="sec-cf49">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-expanded-width u-list u-list-1">
				<div class="u-repeater u-repeater-1">

					<!-- 제품 리스트 출력 -->
					<c:forEach var="v" items="${datas}">

						<div
							class="u-align-center u-container-style u-list-item u-repeater-item">
							<div
								class="u-container-layout u-similar-container u-valign-top-lg u-valign-top-md u-valign-top-sm u-valign-top-xl ">
								<img alt="" class="u-image u-image-default u-image-1"
									data-image-width="2836" data-image-height="1875"
									src="${v.pimg }">
								<h6 class="u-text u-text-default u-text-1">${v.pname}</h6>
								<h5 class="u-text u-text-palette-2-base u-text-2">${v.price}</h5>
								<a href="productDetails.do?pid=${v.pid}"
									class="u-border-2 u-border-grey-25 u-btn u-btn-rectangle u-button-style u-none u-text-body-color u-btn-1">상세보기</a>
							</div>
						</div>
					</c:forEach>
					
				</div>
			</div>
		</div>
	</section>

	<!-- footer-start -->
	<jsp:include page="common/footer.jsp" />

</body>
</html>