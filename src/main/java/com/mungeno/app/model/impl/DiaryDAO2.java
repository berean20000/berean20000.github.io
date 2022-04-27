package com.mungeno.app.model.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mungeno.app.model.DiaryVO;
import com.mungeno.app.model.ReplyVO;

// @Repository("diaryDAO")
public class DiaryDAO2 {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private final String DIARY_SELECTONE="select * from diary where did=?";
	private final String DIARY_SELECTALL_F="select * from diary where ";
	private final String DIARY_SELECTALL_B=" like '%'||?||'%' order by did desc";
	private final String DIARY_INSERT="insert into diary(did,mid,dtitle,dwriter,dimg,dcontent,mregion) values ((select nvl(max(did),1000)+1 from diary),?,?,?,?,?,?)";
	private final String DIARY_UPDATE="update diary set dtitle=?,dcontent=?,dimg=? where did=?";
	private final String DIARY_UPDATE_RECOMMAND="update diary set drecommand=drecommand+1 where did=?";
	private final String DIARY_UPDATE_RPLUS="update diary set rcount=rcount+1 where did=?";
	private final String DIARY_UPDATE_RMINUS="update diary set rcount=rcount-1 where did=?";
	private final String DIARY_DELETE="delete from diary where did=?";
	private final String REPLY_SELECTALL="select * from reply where did=?";
	private final String REPLY_INSERT="insert into reply(rid,mid,did,rwriter,rcontent) values ((select nvl(max(rid),1000)+1 from reply),?,?,?,?)";
	private final String REPLY_UPDATE="update reply set rrecommand=rrecommand+1 where rid=?";
	private final String REPLY_DELETE="delete from reply where rid=?";
	private final String MEMBER_POINTUP="update mungeno set mpoint=mpoint+? where mid like '%'||?||'%'";
	private final String MEMBER_POINTDOWN="update mungeno set mpoint=mpoint-? where mid like '%'||?||'%'";

	// 일지작성
	public void insertDiary(DiaryVO vo) {
		System.out.println("DiaryDAO2 Log : insertDiary() process");
		jdbcTemplate.update(DIARY_INSERT, vo.getMid(),vo.getDtitle(),vo.getDimg(),vo.getDcontent(),vo.getMregion());
		int mpoint=10; // 증가 포인트는 현재 10으로 고정 
		jdbcTemplate.update(MEMBER_POINTUP, mpoint,vo.getMid());
	}
	// 일지상세
	public DiaryVO getDiary(DiaryVO vo) {
		System.out.println("DiaryDAO2 Log : getDiary() process");
		Object[] args= {vo.getDid()};
		return jdbcTemplate.queryForObject(DIARY_SELECTONE, args, new DiaryRowMapper());
	}
	// 일지목록&검색
	public List<DiaryVO> getDiaryList(DiaryVO vo,int listCnt){
		System.out.println("DiaryDAO2 Log : getDiaryList() process");
		String condition="";
		if(vo.getSearchCondition().equals("writer")) {
			condition="dwriter";
		}
		else if(vo.getSearchCondition().equals("region")) {
			condition="mregion";
		}
		else {
			condition="dtitle";
		}
		return jdbcTemplate.query(DIARY_SELECTALL_F+condition+DIARY_SELECTALL_B, new DiaryRowMapper());
	}
	// 일지수정&추천
	public void updateDiary(DiaryVO vo) {
		System.out.println("DiaryDAO2 Log : updateDiary() process");
		if(vo.getDrecommand()!=0) {
			jdbcTemplate.update(DIARY_UPDATE_RECOMMAND, vo.getDid());
			int mpoint=1; // 증가 포인트는 현재 1로 고정
			jdbcTemplate.update(MEMBER_POINTUP, mpoint,vo.getMid());
		}
		else {
			jdbcTemplate.update(DIARY_UPDATE, vo.getDtitle(),vo.getDcontent(),vo.getDimg(),vo.getDid());
		}
	}
	// 일지삭제
	public void deleteDiary(DiaryVO vo) {
		System.out.println("DiaryDAO2 Log : deleteDiary() process");
		jdbcTemplate.update(DIARY_DELETE, vo.getDid());
		int mpoint=10; // 감소 포인트는 현재 10으로 고정 
		jdbcTemplate.update(MEMBER_POINTDOWN, mpoint,vo.getMid());
	}
	// 댓글작성
	public void insertReply(ReplyVO vo) {
		System.out.println("DiaryDAO2 Log : insertReply() process");
		jdbcTemplate.update(REPLY_INSERT, vo.getMid(),vo.getDid(),vo.getRwriter(),vo.getRcontent());
		jdbcTemplate.update(DIARY_UPDATE_RPLUS, vo.getDid());
		int mpoint=2; // 증가 포인트는 현재 2로 고정
		jdbcTemplate.update(MEMBER_POINTUP, mpoint,vo.getMid());
	}
	// 댓글추천
	public void updateReply(ReplyVO vo) {
		System.out.println("DiaryDAO2 Log : updateReply() process");
		jdbcTemplate.update(REPLY_UPDATE, vo.getRid());
		int mpoint=1; // 증가 포인트는 현재 1로 고정
		jdbcTemplate.update(MEMBER_POINTUP, mpoint,vo.getMid());
	}
	// 댓글삭제
	public void deleteReply(ReplyVO vo) {
		System.out.println("DiaryDAO2 Log : deleteReply() process");
		jdbcTemplate.update(REPLY_DELETE, vo.getRid());
		jdbcTemplate.update(DIARY_UPDATE_RMINUS, vo.getDid());
		int mpoint=2; // 감소 포인트는 현재 2로 고정
		jdbcTemplate.update(MEMBER_POINTDOWN, mpoint,vo.getMid());
	}
}

class DiaryRowMapper implements RowMapper<DiaryVO> {
	@Override
	public DiaryVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// 날짜 표기방식 설정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		DiaryVO data=new DiaryVO();
		data.setDid(rs.getInt("did"));
		data.setMid(rs.getString("mid"));
		data.setDtitle(rs.getString("dtitle"));
		data.setDwriter(rs.getString("dwriter"));
		data.setDimg(rs.getString("dimg"));
		data.setDcontent(rs.getString("dcontent"));
		data.setDdate(rs.getDate("ddate"));
		data.setRcount(rs.getInt("rcount"));
		data.setDrecommand(rs.getInt("drecommand"));
		data.setMregion(rs.getString("mregion"));
		data.setTransdate(sdf.format(rs.getDate("ddate")));
		return data;
	}
}
/*
class DiarySetRowMapper implements RowMapper<DiarySet> {
	@Override
	public DiarySet mapRow(ResultSet rs, int rowNum) throws SQLException {
		// 날짜 표기방식 설정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		DiarySet ds=new DiarySet();
		DiaryVO data=new DiaryVO();
		data.setDid(rs.getInt("did"));
		data.setMid(rs.getString("mid"));
		data.setDtitle(rs.getString("dtitle"));
		data.setDwriter(rs.getString("dwriter"));
		data.setDimg(rs.getString("dimg"));
		data.setDcontent(rs.getString("dcontent"));
		data.setDdate(rs.getDate("ddate"));
		data.setRcount(rs.getInt("rcount"));
		data.setDrecommand(rs.getInt("drecommand"));
		data.setMregion(rs.getString("mregion"));
		data.setTransdate(sdf.format(rs.getDate("ddate")));

		// 댓글출력
		ds.setDiaryVO(data);
		ArrayList<ReplyVO> replyList=new ArrayList<ReplyVO>();
		Iterator<ReplyVO> itr=replyList.iterator();
		while(itr.hasNext()) {
			ReplyVO rvo=new ReplyVO();
			rvo.setRid(rs.getInt("rid"));
			rvo.setMid(rs.getString("mid"));
			rvo.setRwriter(rs.getString("rwriter"));
			rvo.setDid(rs.getInt("did"));
			rvo.setRcontent(rs.getString("rcontent"));
			rvo.setRrecommand(rs.getInt("rrecommand"));
			rvo.setTransdate(sdf.format(rs.getDate("rdate")));
			replyList.add(rvo);
		}
		return ds;
	}
}
*/