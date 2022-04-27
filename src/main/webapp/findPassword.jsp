<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Industrial Solutions">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>findpassword</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/findpassword.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.8.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/Logo_220418.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="findpassword">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  
  	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

    <section class="u-clearfix u-section-1" id="sec-8292">
      <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-container-style u-layout-cell u-left-cell u-shape-rectangle u-size-18 u-layout-cell-1">
              <div class="u-container-layout u-container-layout-1"></div>
            </div>
            <div class="u-align-center u-container-style u-grey-10 u-layout-cell u-size-23 u-layout-cell-2">
              <div class="u-container-layout u-container-layout-2">
                <h2 class="u-custom-font u-font-ubuntu u-text u-text-1">비밀번호 찾기</h2>
                <p class="u-text u-text-2">아이디를 입력하시면,<br>해당 아이디의 이메일로<br>변경된 임시 비밀번호가 발송됩니다.
                </p>
                <div class="u-expanded-width u-form u-form-1">
                	
                	<form action="searchPassword.do" method="post" class="u-clearfix user-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px 15px 15px 15px; display: flex;justify-content: center;" >
                    <div class="u-form-group u-form-name u-label-top">
                      <label for="name-558c" class="u-form-control-hidden u-label"></label>
                      <input type="text" id="name-558c" name="mid" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" placeholder="아이디 입력" required >
                    </div>
                    <div class="u-form-group u-form-submit">
                      <a href="#" class="u-btn u-btn-submit u-button-style">임시번호 발송<br>
                      </a>
                      <input type="submit" value="submit" class="u-form-control-hidden">
                    </div>
                  </form>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- footer-start -->
	<jsp:include page="common/footer.jsp" />
    
    <script>
    $(document).ready(function() {
        if (${msg != null}) {
            alert("${msg}");
        }
    })
   </script>
    
  </body>
</html>