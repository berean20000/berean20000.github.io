<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="images/icon/favicon.ico" rel="shortcut icon"
	type="image/x-icon">
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="Who We Are">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>mypage</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/mypage.css" media="screen">
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
<meta property="og:title" content="mypage">
<meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode">

	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

	<section id="carousel_8536" class="u-carousel u-slide u-block-87a2-1"
		data-u-ride="carousel" data-interval="5000">
		<ol class="u-absolute-hcenter u-carousel-indicators u-block-87a2-2">
			<li data-u-target="#carousel_8536" data-u-slide-to="0"
				class="u-active u-grey-30"></li>
		</ol>
		<div class="u-carousel-inner" role="listbox">
			<div
				class="u-active u-align-left u-carousel-item u-clearfix u-section-1-1"
				src="">
				<div class="u-clearfix u-sheet u-sheet-1">
					<div
						class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
						<div class="u-layout">
							<div class="u-layout-row">
								<div
									class="u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
									<div
										class="u-container-layout u-valign-top u-container-layout-1"
										style="margin-left: 50%;">
										<div class="u-tab-links-align-left u-tabs u-tabs-1">
											<ul
												class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled"
												role="tablist">
												<li class="u-tab-item" role="presentation"><a
													class="active u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-1"
													id="link-tab-22eb" href="#tab-22eb" role="tab"
													aria-controls="tab-22eb" aria-selected="true">회원정보</a></li>
												<li class="u-tab-item" role="presentation"><a
													class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-2"
													id="link-tab-bff9" href="#tab-bff9" role="tab"
													aria-controls="tab-bff9" aria-selected="false">구매내역</a></li>
											</ul>
											<div class="u-tab-content">
												<div
													class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1"
													id="tab-22eb" role="tabpanel"
													aria-labelledby="link-tab-22eb">
													<div class="u-container-layout u-container-layout-2">
														<div
															class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xl u-form u-form-1">
															<form action="updateMember.do" method="POST"
																class="u-clearfix u-form-spacing-10 user-form-vertical u-inner-form"
																style="padding: 10px" name="updateMember">
																<div class="u-form-group u-form-name u-label-left">
																	<label for="name-e2a4" class="u-label">아이디</label> <input
																		type="text" id="name-e2a4" name="mid"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.mid}" readonly>
																</div>
																<div class="u-form-group u-label-left">
																	<label for="email-e2a4" class="u-label">비밀번호</label> <input
																		type="password" id="email-e2a4" name="mpw"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.mpw}">
																</div>
																<div class="u-form-group u-label-left">
																	<label for="message-e2a4" class="u-label">별명</label> <input
																		rows="4" cols="50" id="message-e2a4" name="mname"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		type="text" value="${member.mname}">
																</div>
																<div class="u-form-group u-label-left u-form-group-4">
																	<label for="text-40be" class="u-label">거주지역</label> <input
																		type="text" placeholder="" id="text-40be"
																		name="mregion"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.mregion}">
																</div>
																<div class="u-form-group u-label-left u-form-group-5">
																	<label for="text-a79b" class="u-label">상세주소</label> <input
																		type="text" placeholder="" id="text-a79b"
																		name="maddress"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.maddress}">
																</div>
																<div class="u-form-group u-label-left u-form-group-8">
																	<label for="text-6ad0" class="u-label">이메일</label> <input
																		type="text" placeholder="" id="text-6ad0"
																		name="memail"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.memail}">
																</div>
																<div class="u-form-group u-label-left u-form-group-6">
																	<label for="text-2ede" class="u-label">금연시작일</label> <input
																		type="text" placeholder="" id="text-2ede"
																		name="transdate"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.transdate}" readonly>
																</div>
																<div class="u-form-group u-label-left u-form-group-7">
																	<label for="text-5ad0" class="u-label">보유포인트</label> <input
																		type="text" placeholder="" id="text-5ad0"
																		name="mpoint"
																		class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
																		value="${member.mpoint}" readonly>
																</div>
																<div class="u-align-right u-form-group u-form-submit">
																	<a href="#"
																		class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">회원정보변경</a>
																	<input type="submit" value="submit"
																		class="u-form-control-hidden">
																</div>
															</form>
														</div>
														<a href="deleteMember.do?mid=${member.mid}" onclick="return confirm('정말로 탈퇴하시겠습니까?');"
															class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-2">회원탈퇴</a>
													</div>
												</div>
												<div
													class="u-align-center u-container-style u-tab-pane u-white u-tab-pane-2"
													id="tab-bff9" role="tabpanel"
													aria-labelledby="link-tab-bff9">
													<div class="u-container-layout u-container-layout-3">
														<div
															class="u-expanded-width u-table u-table-responsive u-table-1">
															<table class="u-table-entity">
																<colgroup>
																	<col width="15%">
																	<col width="35%">
																	<col width="22.2%">
																	<col width="27.7%">
																</colgroup>
																<thead class="u-grey-50 u-table-header u-table-header-1">
																	<tr style="height: 21px;">
																		<th class="u-border-1 u-border-grey-50 u-table-cell" width="25%">상품번호</th>
																		<th class="u-border-1 u-border-grey-50 u-table-cell" width="35%">구매상품<br>
																		</th>
																		<th class="u-border-1 u-border-grey-50 u-table-cell" width="25%">구매일</th>
																		<th class="u-border-1 u-border-grey-50 u-table-cell" width="15%"></th>
																	</tr>
																</thead>
																<tbody class="u-table-body">

																	<c:forEach var="v" items="${datas}">
																		<input type="hidden" name="did" value="${v.bid}">
																		<tr style="height: 76px;">
																			<td
																				class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${v.pid}</td>
																			<td
																				class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${v.pname}</td>
																			<td
																				class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${v.transdate}</td>
																			<td
																				class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell"><a
																				href="deleteBuylist.do?bid=${v.bid}&mid=${member.mid}">삭제</a></td>
																		</tr>
																	</c:forEach>

																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a
			class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-text-body-alt-color u-block-87a2-3"
			href="#carousel_8536" role="button" data-u-slide="prev"> <span
			aria-hidden="true"> <!-- <svg viewBox="0 0 477.175 477.175">
					<path
						d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg> -->
		</span> <span class="sr-only">Previous</span>
		</a> <a
			class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-text-body-alt-color u-block-87a2-4"
			href="#carousel_8536" role="button" data-u-slide="next"> <span
			aria-hidden="true"> <!-- <svg viewBox="0 0 477.175 477.175">
					<path
						d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg> -->
		</span> <span class="sr-only">Next</span>
		</a>
	</section>

	<!-- footer-start -->
	<jsp:include page="common/footer.jsp" />

</body>
</html>