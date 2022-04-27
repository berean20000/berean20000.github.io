package com.mungeno.app.model;

import java.util.Date;

// 댓글
public class ReplyVO {
	private int rid; // 댓글번호
	private String mid; // 댓글작성자(회원ID)
	private String rwriter; // 댓글작성자(회원명)
	private int did; // 원문번호(일지번호)
	private String rcontent; // 내용
	private Date rdate; // 작성일
	private int rrecommand; // 추천수
	private String transdate; // rdate형변환

	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getRwriter() {
		return rwriter;
	}
	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public int getRrecommand() {
		return rrecommand;
	}
	public void setRrecommand(int rrecommand) {
		this.rrecommand = rrecommand;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public String getTransdate() {
		return transdate;
	}
	public void setTransdate(String transdate) {
		this.transdate = transdate;
	}
	@Override
	public String toString() {
		return "DiaryVO [rid=" + rid + ", mid=" + mid + ", rwriter=" + rwriter + ", did=" + did + ", rcontent="
				+ rcontent + ", rdate=" + rdate + ", rrecommand=" + rrecommand + ", transdate=" + transdate + "]";
	}
}