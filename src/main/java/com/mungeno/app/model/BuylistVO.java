package com.mungeno.app.model;

import java.util.Date;

// 구매이력
public class BuylistVO {
	private int bid; // 구매번호
	private String mid; // 구매자(회원ID)
	private int pid; // 구매상품(상품번호)
	private String pname; //구매상품(상품명)
	private Date bdate; // 구매일
	private String transdate; // bdate형변환
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public String getTransdate() {
		return transdate;
	}
	public void setTransdate(String transdate) {
		this.transdate = transdate;
	}
	@Override
	public String toString() {
		return "BuylistVO [bid=" + bid + ", mid=" + mid + ", pid=" + pid + ", bdate=" + bdate + ", transdate="
				+ transdate + "]";
	}
}