<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ksj" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko" style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Anytime Fitness">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>diarydetails</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/diarydetails.css" media="screen">
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
    <meta property="og:title" content="diarydetails">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  
  	<!-- header-start -->
	<jsp:include page="common/header.jsp" />

    <section class="u-clearfix u-section-1" id="carousel_a397">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-sheet-1" style="height:auto; min-height:720px;">
        <div class="u-container-style u-group u-image u-image-tiles u-image-1" data-image-width="64" data-image-height="80">
          <div class="u-container-layout u-container-layout-1"></div>
        </div>
        <div class="u-align-left u-container-style u-group u-palette-1-light-1 u-shape-rectangle u-group-2">
          <div class="u-container-layout u-container-layout-2"></div>
        </div>
        <div class="u-palette-1-base u-shape u-shape-rectangle u-shape-1"></div>
        <img class="u-image u-image-2" src="images/upload/${data.dimg}" data-image-width="788" data-image-height="684">
        <div class="u-container-style u-expanded-width-xs u-group u-white u-group-3">
          <div class="u-container-layout u-container-layout-3" style="height:530px;">
            <div class="u-form u-form-1">
            
              <form action="updateDiary.do" method="POST" class="" style="padding: 10px" name="updateDiary" >
              <input type="hidden" name="mid" value="${data.mid}">
                <div class="u-form-group u-form-name u-label-left">
                  <label for="name-e2a4" class="u-label">번호</label>
                  <input type="text" id="name-e2a4" name="did" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" value="${data.did}" readonly >
                </div>
                <div class="u-form-group u-label-left u-form-group-2">
                  <label for="text-663b" class="u-label">제목</label>
                  <input type="text" placeholder="" id="text-663b" name="dtitle" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" value="${data.dtitle}" <ksj:diarydetail type="readonly" /> >
                </div>
                <div class="u-form-group u-label-left">
                  <label for="email-e2a4" class="u-label">작성자</label>
                  <input type="text" id="email-e2a4" name="dwriter" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" value="${data.dwriter}" readonly >
                </div>
                <div class="u-form-group u-form-message u-label-left u-form-group-4">
                  <label for="text-e637" class="u-label">내용</label>
                  <textarea placeholder="" id="text-e637" name="dcontent" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" <ksj:diarydetail type="readonly" /> >${data.dcontent}</textarea>
                </div>
                <div class="u-form-group u-label-left u-form-group-5">
                  <label for="text-c394" class="u-label">지역</label>
                  <input type="text" placeholder="" id="text-c394" name="mregion" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" value="${data.mregion }" readonly >
                </div>
                
                <div class="u-align-center u-form-group u-form-submit">
                	<ksj:diarydetail type="update" />
                	<!-- 
                  <a href="#" class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">글수정</a>
                  <input type="submit" value="submit" class="u-form-control-hidden"> -->
                </div>
              </form>
              
            </div>
            <ksj:diarydetail type="delete" />
            <!-- 
            <a href="deleteDiary.do?did=${data.did}" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-2" style="margin-top:-76">글삭제</a>
             -->
            
            <!--  좋아요 버튼 -->
            <ksj:diarydetail type="recommand" />
            <!-- 
            <span class="u-icon u-icon-1" data-href="recommandDiary.do?did=${data.did}&amp;mid=${data.mid}"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 50 50" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6cdf"></use></svg><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" id="svg-6cdf" style="enable-background:new 0 0 50 50;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg></span>
	 		-->
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-f15c">
      <div class="u-clearfix u-sheet u-sheet-1" style="height:auto; min-height:500px;">
        <div class="u-form u-form-1">
        
          <form action="insertReply.do" method="POST" class="u-clearfix user-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px" name="insertReply">
          	<input type="hidden" name="did" value="${data.did }">
			<input type="hidden" name="mid" value="${member.mid }">
          	
          	<ksj:diarydetail type="reply" />
          	<!-- 
            <div class="u-form-group u-form-name u-label-top u-form-group-1">
              <label for="name-558c" class="u-form-control-hidden u-label"></label>
              <input type="text" id="name-558c" name="rwriter" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" value="${member.mname}" readonly >
            </div>
            <div class="u-form-group u-form-message u-label-top u-form-group-2">
              <label for="email-558c" class="u-form-control-hidden u-label"></label>
              <textarea placeholder="댓글 내용" id="email-558c" name="rcontent" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" required="required" style="height: 47.6px;"></textarea>
            </div>
            <div class="u-form-group u-form-submit u-form-group-3">
              <a href="#" class="u-btn u-btn-submit u-button-style">댓글등록</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
             -->
          </form>
          
        </div>
        <div class="u-align-center u-expanded-width-xs u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="7.6%">
              <col width="12.4%">
              <col width="43.4%">
              <col width="11.7%">
              <col width="7.8%">
              <col width="8.5%">
              <col width="8.6%">
            </colgroup>
            <thead class="u-black u-table-header u-table-header-1">
              <tr style="height: 47px;">
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-1" width="5%">번호</th>
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-2" width="8%">작성자</th>
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-3" width="40%">내용</th>
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-4" width="12%">작성일<br>
                </th>
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-5" width="5%">추천수</th>
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-6" width="5%"></th>
                <th class="u-border-1 u-border-black u-palette-5-dark-2 u-table-cell u-table-cell-7" width="5%"></th>
              </tr>
            </thead>
            <tbody class="u-table-body">
            
            <c:forEach var="v" items="${rdatas}">
			<input type="hidden" name="did" value="${v.did}">
			<input type="hidden" name="mid" value="${v.mid}">
			<tr style="height: 72px;">
                <td class="u-border-1 u-border-grey-30 u-table-cell">${v.rid}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${v.rwriter}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${v.rcontent}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${v.transdate}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${v.rrecommand}</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">
                <c:if test="${member.mid!=null}">
                	<a href="updateReply.do?rid=${v.rid}&mid=${v.mid}&did=${v.did}">추천</a>
                </c:if>
                </td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">
                <c:if test="${member.mid==v.mid}">
						<a href="deleteReply.do?rid=${v.rid}&did=${v.did}">삭제</a>
					</c:if>
					<c:if test="${member.mid!=v.mid}">
						
					</c:if>
					${sysdate }
				</td>
            </tr>
			</c:forEach>
		
            </tbody>
          </table>
        </div>
      </div>
    </section>
    
    <!-- footer-start -->
	<jsp:include page="common/footer.jsp" />
   
  </body>
</html>