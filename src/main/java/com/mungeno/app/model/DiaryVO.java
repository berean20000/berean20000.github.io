package com.mungeno.app.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

//금연일지
public class DiaryVO {
	private int did; // 일지번호
	private String mid; // 작성자(회원ID)
	private String dtitle; // 제목
	private String dwriter; // 작성자(회원명)
	private String dimg; // 이미지 경로
	private String dcontent; // 내용
	private Date ddate; // 작성일
	private int rcount; // 댓글수
	private int drecommand; // 추천수
	private String mregion; // 작성자 지역
	private String transdate; // ddate형변환
	private MultipartFile uploadFile; // 파일 업로드

	// 검색용
	private String searchCondition; // 검색조건
	private String searchKeyword; // 검색어

	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getDtitle() {
		return dtitle;
	}
	public void setDtitle(String dtitle) {
		this.dtitle = dtitle;
	}
	public String getDwriter() {
		return dwriter;
	}
	public void setDwriter(String dwriter) {
		this.dwriter = dwriter;
	}
	public String getDimg() {
		return dimg;
	}
	public void setDimg(String dimg) {
		this.dimg = dimg;
	}
	public String getDcontent() {
		return dcontent;
	}
	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	public int getDrecommand() {
		return drecommand;
	}
	public void setDrecommand(int drecommand) {
		this.drecommand = drecommand;
	}
	public String getMregion() {
		return mregion;
	}
	public void setMregion(String mregion) {
		this.mregion = mregion;
	}
	public String getTransdate() {
		return transdate;
	}
	public void setTransdate(String transdate) {
		this.transdate = transdate;
	}

	// 검색용
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	// 파일업로드용
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "DiaryVO [did=" + did + ", mid=" + mid + ", dtitle=" + dtitle + ", dwriter=" + dwriter + ", dimg=" + dimg
				+ ", dcontent=" + dcontent + ", ddate=" + ddate + ", rcount=" + rcount + ", drecommand=" + drecommand
				+ ", mregion=" + mregion + ", transdate=" + transdate + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + "]";
	}
}