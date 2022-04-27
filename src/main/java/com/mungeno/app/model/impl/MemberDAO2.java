package com.mungeno.app.model.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mungeno.app.model.MemberVO;

// @Repository("memberDAO")
public class MemberDAO2 {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private final String MEMBER_SELECTONE="select * from mungeno where mid=? and mpw=?";
	private final String MEMBER_INSERT="insert into mungeno(mid,mpw,mname,mregion,memail) values (?,?,?,?,?)";
	private final String MEMBER_UPDATE="update mungeno set mpw=?,mname=?,mregion=?,memail=? where mid=?;";
	private final String MEMBER_DELETE="delete mungeno where mid=?";

	// 회원가입
	public void insertMember(MemberVO vo) {
		System.out.println("MemberDAO2 Log : insertMember() process");
		jdbcTemplate.update(MEMBER_INSERT,vo.getMid(),vo.getMpw(),vo.getMname(),vo.getMregion(),vo.getMemail());
	}
	// 로그인&회원상세
	public MemberVO getMember(MemberVO vo) {
		System.out.println("MemberDAO2 Log : getMember() process");
		System.out.println(vo.getMid());
		System.out.println(vo.getMpw());
		Object[] args= {vo.getMid(),vo.getMpw()};
		return jdbcTemplate.queryForObject(MEMBER_SELECTONE, args, new MemberRowMapper());
	}
	// 회원수정
	public void updateMember(MemberVO vo) {
		System.out.println("MemberDAO2 Log : updateMember() process");
		jdbcTemplate.update(MEMBER_UPDATE,vo.getMpw(),vo.getMname(),vo.getMregion(),vo.getMemail(),vo.getMid());
	}
	// 회원탈퇴
	public void deleteMember(MemberVO vo) {
		System.out.println("MemberDAO2 Log : deleteMember() process");
		jdbcTemplate.update(MEMBER_DELETE,vo.getMid());
	}
}

class MemberRowMapper implements RowMapper<MemberVO> {
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// 날짜 표기방식 설정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.format(rs.getDate("startdate"));

		MemberVO data=new MemberVO();
		data.setMid(rs.getString("mid"));
		data.setMpw(rs.getString("mpw"));
		data.setMname(rs.getString("mname"));
		data.setMregion(rs.getString("mregion"));
		data.setMemail(rs.getString("memail"));
		data.setStartdate(rs.getDate("startdate"));
		data.setMpoint(rs.getInt("mpoint"));
		data.setTransdate(sdf.format(rs.getDate("startdate")));
		return data;
	}	
}