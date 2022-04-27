<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="images/icon/favicon.ico" rel="shortcut icon"
	type="image/x-icon">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEADER</title>
</head>
<body>

	<header class="u-clearfix u-header u-header" id="sec-b76e">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-row">
						<div
							class="u-container-style u-layout-cell u-size-10 u-layout-cell-1">
							<div class="u-container-layout u-container-layout-1">
								<a href="main.do" data-page-id="519612590"
									class="u-image u-logo u-image-1" title="Home"
									data-image-width="400" data-image-height="250"> <img
									src="images/Logo_220418.png"
									class="u-logo-image u-logo-image-1">
								</a>
							</div>
						</div>
						<div
							class="u-container-style u-layout-cell u-size-34 u-layout-cell-2">

							<c:choose>
								<c:when test="${member.mname!=null}">

									<div
										class="u-container-layout u-valign-bottom-xs u-container-layout-2">

										<form action="mypage.do" method="post" id="mypageform">
											<div class="u-form u-form-1">
												<div style="text-align:center"><h3>${member.mname}<spring:message code="message.header.hellof"/>${day}<spring:message code="message.header.hellob"/></h3></div>
												<input type="hidden" name="mid" value="${member.mid}"
													readonly /> <input type="hidden" name="mpw"
													value="${member.mpw}" /> <input type="hidden" name="mname"
													value="${member.mname}" readonly /> <input type="hidden"
													name="mregion" value="${member.mregion}" /> <input
													type="hidden" name="memail" value="${member.memail}" /> <input
													type="hidden" name="transdate" value="${member.transdate}"
													readonly /> <input type="hidden" name="mpoint"
													value="${member.mpoint}" readonly />
											</div>

											<h6 class="u-text u-text-default u-text-1" style="margin-left:35%;">
												<a
												class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
												href="#" onclick="document.getElementById('mypageform').submit();"><b><spring:message code="message.header.mypage"/></b></a>
												<!-- <input type="submit" value="마이페이지"> -->
											</h6>
											<h6 class="u-text u-text-default u-text-2">
											<a
												class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
												href="logout.do"><b><spring:message code="message.header.logout"/></b></a></h6>
												
												<!-- <h6 class="u-text u-text-default u-text-2">
													<a href="logout.do">로그아웃</a>
												</h6> -->
										</form>

									</div>

								</c:when>
								<c:otherwise>
									<div
										class="u-container-layout u-valign-bottom-xs u-container-layout-2">
										<div class="u-form u-form-1" style="margin-left:25%;">
											<form action="login.do" method="POST"
												class="u-clearfix user-form-horizontal u-form-spacing-15 u-inner-form"
												style="padding: 15px" source="email" redirect="true">
												<div class="u-form-group u-form-name u-label-top">
													<label for="name-558c"
														class="u-form-control-hidden u-label"></label> <input
														type="text" placeholder="<spring:message code="message.header.idinput"/>" id="name-558c" name="mid"
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-input-1"
														required="" style="width:150px">
												</div>
												<div class="u-form-group u-label-top">
													<label for="password-558c"
														class="u-form-control-hidden u-label"></label> <input
														type="password" placeholder="<spring:message code="message.header.pwinput"/>" id="password-558c"
														name="mpw"
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-input-2"
														required="required" style="width:150px">
												</div>

												<div class="u-form-group u-form-submit">
													<a href="#"
														class="u-btn u-btn-submit u-button-style u-btn-1"><spring:message code="message.header.login"/><br>
													</a> <input type="submit" value="submit"
														class="u-form-control-hidden">
												</div>
												<input type="hidden" value="" name="recaptchaResponse">

											</form>
										</div>
										<h6 class="u-text u-text-default u-text-1">
											<a
												class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2"
												href="signup.do"><b><spring:message code="message.header.signup"/></b> </a>
										</h6>
										<h6 class="u-text u-text-default u-text-2">
											<a
												class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
												href="findPassword.do"><b><spring:message code="message.header.findpw"/></b> </a>
										</h6>
									</div>
								</c:otherwise>
							</c:choose>

						</div>
						<div
							class="u-container-style u-layout-cell u-size-16 u-layout-cell-3">
							<div
								class="u-container-layout u-valign-bottom u-container-layout-3">
								<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
									<div class="menu-collapse"
										style="font-size: 1rem; letter-spacing: 0px;">
										<a
											class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
											href="#"> <svg class="u-svg-link" viewBox="0 0 24 24">
												<use xmlns:xlink="http://www.w3.org/1999/xlink"
													xlink:href="#svg-5906"></use></svg> <svg class="u-svg-content"
												version="1.1" id="svg-5906" viewBox="0 0 16 16" x="0px"
												y="0px" xmlns:xlink="http://www.w3.org/1999/xlink"
												xmlns="http://www.w3.org/2000/svg">
												<g>
												<rect y="1" width="16" height="2"></rect>
												<rect y="7" width="16" height="2"></rect>
												<rect y="13" width="16" height="2"></rect>
</g></svg>
										</a>
									</div>
									<div class="u-custom-menu u-nav-container">
										<ul class="u-nav u-unstyled u-nav-1">
											<li class="u-nav-item"><strong><a
												class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
												href="main.do?lang=ko" style="padding: 10px 8px;">한국어</a></strong></li>
											<li class="u-nav-item"><strong><a
												class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
												href="main.do?lang=jp" style="padding: 10px 8px;">日本語</a></strong></li>
											<li class="u-nav-item"><strong><a
												class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
												href="about.do" style="padding: 10px 8px;"><spring:message code="message.header.siteinfo"/></a></strong></li>
											<li class="u-nav-item"><strong><a
												class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
												href="product.do" style="padding: 10px 8px;"><spring:message code="message.header.product"/></a></strong></li>
										</ul>
									</div>
									<div class="u-custom-menu u-nav-container-collapse">
										<div
											class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
											<div class="u-inner-container-layout u-sidenav-overflow">
												<div class="u-menu-close"></div>
												<ul
													class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
													<li class="u-nav-item"><a
														class="u-button-style u-nav-link" href="main.do?lang=ko">한국어</a>
													</li>
													<li class="u-nav-item"><a
														class="u-button-style u-nav-link" href="main.do?lang=jp">日本語</a>
													</li>
													<li class="u-nav-item"><a
														class="u-button-style u-nav-link" href="about.do">사이트정보</a>
													</li>
													<li class="u-nav-item"><a
														class="u-button-style u-nav-link" href="product.do">제품정보</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr width=1136px;>
	</header>

</body>
</html>