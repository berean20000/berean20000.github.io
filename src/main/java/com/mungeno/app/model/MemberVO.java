package com.mungeno.app.model;

import java.util.Date;

// 회원정보
public class MemberVO {
	private String mid; // 회원ID
	private String mpw; // 비밀번호
	private String mname; // 이름
	private String mregion; // 지역
	private String maddress; // 지역상세
	private String memail; // 이메일
	private Date startdate; // 금연시작일
	private int mpoint; // 포인트(상품에 할인적용)
	private String transdate; // startdate형변환
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMregion() {
		return mregion;
	}
	public void setMregion(String mregion) {
		this.mregion = mregion;
	}
	public String getMaddress() {
		return maddress;
	}
	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public int getMpoint() {
		return mpoint;
	}
	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}
	public String getTransdate() {
		return transdate;
	}
	public void setTransdate(String transdate) {
		this.transdate = transdate;
	}
	@Override
	public String toString() {
		return "MemberVO [mid=" + mid + ", mpw=" + mpw + ", mname=" + mname + ", mregion=" + mregion + ", maddress="
				+ maddress + ", memail=" + memail + ", startdate=" + startdate + ", mpoint=" + mpoint + ", transdate="
				+ transdate + "]";
	}
}