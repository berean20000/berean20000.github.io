<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="ko" style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>error</title>
    <link rel="stylesheet" href="../css/nicepage.css" media="screen">
<link rel="stylesheet" href="../css/error.css" media="screen">
    <script class="u-script" type="text/javascript" src="../js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.8.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/Logo_220418.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="error">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  
    <!-- Header -->
 	<jsp:include page="../common/header.jsp" />
    
    <section class="u-align-center u-clearfix u-section-1" src="" id="sec-3247">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-border-3 u-border-grey-40 u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <h1 class="u-align-center u-text u-text-default u-text-1">Error</h1>
            <img class="u-image u-image-default u-image-1" src="../images/error.jpeg" alt="" data-image-width="619" data-image-height="320">
            <p class="u-align-center u-text u-text-default u-text-2">에러페이지 : ${excep.message} | ${exception.message}</p>
          </div>
        </div>
        <a href="main.do" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">메인으로 돌아가기</a>
      </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="../common/footer.jsp" />
    
  </body>
</html>