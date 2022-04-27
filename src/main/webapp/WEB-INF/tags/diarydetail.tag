<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="type" %>

<c:if test="${member.mid==data.mid}">
<c:choose>
<c:when test="${type=='update'}">
	<a href="#" class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">글수정</a>
    <input type="submit" value="submit" class="u-form-control-hidden">
</c:when>
<c:when test="${type=='delete'}">
	<a href="deleteDiary.do?did=${data.did}&mid=${data.mid}" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-2" style="margin-top:-76">글삭제</a>
</c:when>
<c:when test="${type=='readonly'}">
	
</c:when>
</c:choose>
</c:if>

<c:if test="${member.mid!=data.mid}">
<c:choose>
<c:when test="${type=='update'}">
	<a class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">글수정</a>
</c:when>
<c:when test="${type=='delete'}">
	<a class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-2" style="margin-top:-76">글삭제</a>
</c:when>
<c:when test="${type=='readonly'}">
	readonly
</c:when>
</c:choose>
</c:if>



<c:if test="${member.mid!=null}">
<c:choose>
<c:when test="${type=='diary'}">
	<a href="diaryInsert.do" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-2">글등록</a>
</c:when>
<c:when test="${type=='reply'}">
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
</c:when>
<c:when test="${type=='recommand'}">
	<span class="u-icon u-icon-1" data-href="recommandDiary.do?did=${data.did}&amp;mid=${data.mid}"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 50 50" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6cdf"></use></svg><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" id="svg-6cdf" style="enable-background:new 0 0 50 50;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg></span>
</c:when>
<c:when test="${type=='rrecommand'}">
	<a href="updateReply.do?rid=${v.rid}&mid=${v.mid}&did=${v.did}">추천</a>
</c:when>
</c:choose>
</c:if>

<c:if test="${member.mid==null}">
<c:choose>
<c:when test="${type=='diary'}">
	
</c:when>
<c:when test="${type=='recommand'}">
	
</c:when>
<c:when test="${type=='reply'}">
	<h6 style="margin-left:30%;color:DodgerBlue"><strong>
		로그인 후 이용가능
	</strong></h6>
</c:when>
<c:when test="${type=='rrecommand'}">

</c:when>
</c:choose>
</c:if>


<c:if test="${member.mid==v.mid}">
<c:choose>
<c:when test="${type=='rdelete'}">
	<a href="deleteReply.do?rid=${v.rid}&did=${v.did}">삭제</a>
</c:when>
</c:choose>
</c:if>
<c:if test="${member.mid!=v.mid}">
<c:choose>
<c:when test="${type=='rdelete'}">
	
</c:when>
</c:choose>
</c:if>