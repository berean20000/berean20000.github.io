<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ksj" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko" style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Mungeno Developer">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>about</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/about.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.8.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/Logo_220418.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="about">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">

	<!-- header-start -->
	<jsp:include page="common/header.jsp" />
	
    <section class="u-clearfix u-section-1" id="sec-aa1e">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-10 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout" style="">
            <div class="u-layout-row" style="">
              <div class="u-container-style u-layout-cell u-left-cell u-size-30 u-size-xs-60 u-layout-cell-1" src="">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <h2 class="u-align-center u-text u-text-default u-text-1">Mungeno Developer</h2>
                  <p class="u-align-center u-text u-text-2">
                  <spring:message code="message.about.content"/>
                  <!-- 세상에서 가장 쉬운 도전!<br>가만히만 있어도 칭찬 받는 도전!<br>어렵게 생각하지 마세요!<br>
                    <br><b>개발자</b> : 김ⓢⓙ<br><b>제조일</b> : 1986년1월1일<br><b>원산지</b> : 대한민국 서울특별시<br><b>보유스킬</b> : 웹개발&amp;일본어 -->
                  </p>
                  <a href="https://keiren2022.tistory.com" class="u-btn u-btn-round u-button-style u-radius-50 u-btn-1" target="_blank"><spring:message code="message.about.button"/></a>
                </div>
              </div>
              <div class="u-align-center u-container-style u-image u-image-contain u-layout-cell u-right-cell u-size-30 u-size-xs-60 u-image-1" src="" data-image-width="487" data-image-height="309">
                <div class="u-container-layout u-valign-middle u-container-layout-2" src=""></div>
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