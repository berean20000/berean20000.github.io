<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ksj" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="now" />
<link href="images/icon/favicon.ico" rel="shortcut icon"
	type="image/x-icon">

<!DOCTYPE html>
<html lang="ko" style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="INTUITIVE">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>main</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/main.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
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
<meta property="og:title" content="main">
<meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode">

	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

	<section class="u-align-left u-clearfix u-section-1" id="sec-7c8d">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-1">
				<ul
					class="u-border-2 u-border-grey-75 u-spacing-10 u-tab-list u-unstyled"
					role="tablist">
					<li class="u-tab-item" role="presentation"><a
						class="active u-active-palette-5-dark-1 u-button-style u-palette-5-light-1 u-tab-link u-text-active-white u-text-black u-text-hover-white u-tab-link-1"
						id="link-tab-0da5" href="#tab-0da5" role="tab"
						aria-controls="tab-0da5" aria-selected="true"><spring:message code="message.main.diary"/></a></li>
					<li class="u-tab-item u-tab-item-2" role="presentation"><a
						class="u-active-palette-5-dark-1 u-button-style u-palette-5-light-1 u-tab-link u-text-active-white u-text-black u-text-hover-white u-tab-link-2"
						id="tab-93fc" href="#link-tab-93fc" role="tab"
						aria-controls="link-tab-93fc" aria-selected="false"><spring:message code="message.main.movie"/></a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-palette-5-dark-1 u-button-style u-palette-5-light-1 u-tab-link u-text-active-white u-text-black u-text-hover-white u-tab-link-3"
						id="link-tab-2917" href="#tab-2917" role="tab"
						aria-controls="tab-2917" aria-selected="false"><spring:message code="message.main.game"/></a></li>
				</ul>
				<div class="u-tab-content">
					<div
						class="u-align-left u-container-style u-shape-rectangle u-tab-active u-tab-pane"
						id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
						<div class="u-container-layout u-valign-top u-container-layout-1">
							<h4 class="u-text u-text-default u-text-1"><spring:message code="message.main.diary"/></h4>
							<div class="u-form u-form-1">

								<!-- 검색 -->
								<form action="#" method="POST"
									class="u-clearfix user-form-horizontal u-form-spacing-15 u-inner-form"
									style="padding: 15px" source="email" redirect="true"
									redirect-address="main.do" name="searchKeyword">
									<div class="u-form-group u-form-name u-label-top">
										<label for="name-558c" class="u-form-control-hidden u-label"></label>
										<input type="text" placeholder="<spring:message code='message.main.searchk'/>" id="name-558c"
											name="searchKeyword"
											class="u-border-1 u-border-grey-30 u-input u-input-rectangle"
											>
									</div>
									<div
										class="u-form-group u-form-select u-label-top u-form-group-2">
										<label for="select-cd10" class="u-form-control-hidden u-label"></label>
										<div class="u-form-select-wrapper">
											<select id="select-cd10" name="searchCondition"
												class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
												<c:forEach var="v" items="${conMap}">
													<option value="${v.value }">${v.key}</option>
												</c:forEach>
											</select>
											<svg xmlns="http://www.w3.org/2000/svg" width="14"
												height="12" version="1" class="u-caret">
												<path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
										</div>
									</div>
									<div class="u-form-group u-form-submit">
										<a href="#" class="u-btn u-btn-submit u-button-style"><spring:message code="message.main.searchb"/></a> <input
											type="submit" value="submit" class="u-form-control-hidden">
									</div>
									<input type="hidden" value="" name="recaptchaResponse">
								</form>

							</div>
							<div
								class="u-expanded-width u-table u-table-responsive u-table-1">
								<table class="u-table-entity">
									<colgroup>
										<col width="7.5%">
										<col width="29.1%">
										<col width="29.8%">
										<col width="12%">
										<col width="7.3%">
										<col width="7.4%">
										<col width="7%">
									</colgroup>
									<thead class="u-black u-table-header u-table-header-1">
										<tr style="height: 44px;">
											<th
												class="u-border-1 u-border-palette-5-dark-1 u-palette-5-dark-2 u-table-cell u-table-cell-1"><spring:message code="message.main.no"/></th>
											<th
												class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-2"><spring:message code="message.main.title"/></th>
											<th
												class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-3"><spring:message code="message.main.writer"/></th>
											<th
												class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-4"><spring:message code="message.main.date"/></th>
											<th
												class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-5"><spring:message code="message.main.reply"/></th>
											<th
												class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-6"><spring:message code="message.main.recommand"/></th>
											<th
												class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-7"><spring:message code="message.main.region"/></th>
										</tr>
									</thead>
									<tbody class="u-grey-70 u-table-body u-table-body-1">
										
										<!--  일지 리스트 출력 -->
										<c:forEach var="v" items="${datas}">
										<tr style="height: 31px;">
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-8"><a href="details.do?did=${v.did}">${v.did}</a></td>
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-9">
												
												<!-- Hot -->
												<c:if test="${v.drecommand>=10}">
													<Strong>${v.dtitle}</Strong>
													<img src="images/hot.png" width="30px">
												</c:if>
												<c:if test="${v.drecommand<10}">
													${v.dtitle}
												</c:if>
												</td>
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-10">${v.dwriter}</td>
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-11">${v.transdate}</td>
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-12">${v.rcount}</td>
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-13">${v.drecommand}</td>
											<td
												class="u-border-1 u-border-grey-50 u-palette-5-light-2 u-table-cell u-table-cell-14">${v.mregion}</td>
										</tr>
										</c:forEach>
										
									</tbody>
								</table>
							</div>
							<ksj:diarydetail type="diary" />
							<!-- 
							<a href="diaryInsert.jsp"
								class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-2">글등록</a>
							 -->
						</div>
					</div>
					<div
						class="u-align-left u-container-style u-shape-rectangle u-tab-pane u-tab-pane-2"
						id="link-tab-93fc" role="tabpanel" aria-labelledby="tab-93fc">
						<div class="u-container-layout u-valign-top u-container-layout-2">
							<h4 class="u-text u-text-default u-text-2"><spring:message code="message.main.movie"/></h4>
							<div
								class="u-carousel u-gallery u-gallery-slider u-layout-carousel u-lightbox u-no-transition u-show-text-on-hover u-thumbnails-position-right u-gallery-1"
								data-interval="5000" data-u-ride="carousel" id="carousel-5171">
								<div class="u-carousel-inner u-gallery-inner" role="listbox">
									<div
										class="u-active u-carousel-item u-effect-fade u-gallery-item u-carousel-item-1">
										<div class="u-back-slide u-video">
											<div class="u-background-video u-expanded" style="">
												<div class="embed-responsive embed-responsive-1">
													<iframe
														style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
														class="embed-responsive-item"
														src="https://www.youtube.com/embed/CHzPO9GTJ-Y?playlist=CHzPO9GTJ-Y&amp;loop=1&amp;mute=1&amp;showinfo=0&amp;controls=0&amp;start=0&amp;autoplay=1"
														data-autoplay="1" frameborder="0" allowfullscreen=""></iframe>
												</div>
											</div>
										</div>
										<div
											class="u-align-center u-over-slide u-shading u-valign-bottom u-over-slide-1">
											<h3 class="u-gallery-heading">Movie 1</h3>
											<p class="u-gallery-text">~ The War ~</p>
										</div>
									</div>
									<div
										class="u-carousel-item u-effect-fade u-gallery-item u-carousel-item-2">
										<div class="u-back-slide u-video">
											<div class="u-background-video u-expanded" style="">
												<div class="embed-responsive embed-responsive-2">
													<iframe
														style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
														class="embed-responsive-item"
														src="https://www.youtube.com/embed/_8ZjoqoZoUg?playlist=_8ZjoqoZoUg&amp;loop=1&amp;mute=1&amp;showinfo=0&amp;controls=0&amp;start=0&amp;autoplay=1"
														data-autoplay="1" frameborder="0" allowfullscreen=""></iframe>
												</div>
											</div>
										</div>
										<div
											class="u-align-center u-over-slide u-shading u-valign-bottom u-over-slide-2">
											<h3 class="u-gallery-heading">Movie 2</h3>
											<p class="u-gallery-text">~ The Puppet ~</p>
										</div>
									</div>
									<div
										class="u-carousel-item u-effect-fade u-gallery-item u-carousel-item-3"
										data-image-width="2836" data-image-height="1875">
										<div class="u-back-slide u-video">
											<div class="u-background-video u-expanded" style="">
												<div class="embed-responsive embed-responsive-3">
													<iframe
														style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
														class="embed-responsive-item"
														src="https://www.youtube.com/embed/7MVNr4Ef02Y?playlist=7MVNr4Ef02Y&amp;loop=1&amp;mute=1&amp;showinfo=0&amp;controls=0&amp;start=0&amp;autoplay=1"
														data-autoplay="1" frameborder="0" allowfullscreen=""></iframe>
												</div>
											</div>
										</div>
										<div
											class="u-align-center u-over-slide u-shading u-valign-bottom u-over-slide-3">
											<h3 class="u-gallery-heading">Movie 3</h3>
											<p class="u-gallery-text">~ The Jail ~</p>
										</div>
										<style data-mode="XL" data-visited="true"></style>
										<style data-mode="LG"></style>
										<style data-mode="MD"></style>
										<style data-mode="SM"></style>
										<style data-mode="XS"></style>
									</div>
								</div>
								<a
									class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1"
									href="#carousel-5171" role="button" data-u-slide="prev" style="position:absolute;left:15px;"> <span
									aria-hidden="true"> <svg viewBox="0 0 451.847 451.847">
											<path
												d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
								</span> <span class="sr-only"> <svg
											viewBox="0 0 451.847 451.847">
											<path
												d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
								</span>
								</a> <a
									class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2"
									href="#carousel-5171" role="button" data-u-slide="next" style="position:absolute;right:15px;"> <span
									aria-hidden="true"> <svg viewBox="0 0 451.846 451.847">
											<path
												d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
								</span> <span class="sr-only"> <svg
											viewBox="0 0 451.846 451.847">
											<path
												d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
								</span>
								</a>
							</div>
						</div>
					</div>
					<div
						class="u-align-left u-container-style u-shape-rectangle u-tab-pane u-tab-pane-3"
						id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
						<div class="u-container-layout u-container-layout-3">
							<h4 class="u-text u-text-default u-text-3"><spring:message code="message.main.game"/></h4>
							<div class="u-align-left u-video u-video-4">
								<div class="embed-responsive embed-responsive-4">
									<iframe
										style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
										class="embed-responsive-item"
										src="https://player.tubia.com/index.html?publisherid=02e74f10e0327ad868d138f2b4fdd6f0&amp;title=Cigarette%20Killer&amp;gameid=7503&amp;langcode=en-us&amp;url=https%3A%2F%2Fwww.miniplay.com%2Fgame%2Fcigarette-killer&amp;href=https%3A%2F%2Fwww.miniplay.com%2Fgame%2Fcigarette-killer"
										frameborder="0" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-center u-clearfix u-section-2" id="sec-5bdb">
		<div class="u-clearfix u-sheet u-sheet-1"></div>
	</section>

	<!-- footer-start -->
	<jsp:include page="common/footer.jsp" />
	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
   <script>
    $(document).ready(function() {
        if (${msg != null}) {
            alert("${msg}");
        }
    })
   </script>
	
</body>
</html>