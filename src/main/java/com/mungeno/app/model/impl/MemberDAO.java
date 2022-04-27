package com.mungeno.app.model.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Repository;

import com.mungeno.app.common.APISet;
import com.mungeno.app.common.JDBCUtil;
import com.mungeno.app.model.MemberVO;

@Repository("memberDAO")
public class MemberDAO {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private final String MEMBER_SELECTONE="select * from mungeno_member where mid=? and mpw=?";
	private final String MEMBER_INSERT="insert into mungeno_member(mid,mpw,mname,mregion,maddress,memail) values (?,?,?,?,?,?)";
	private final String MEMBER_UPDATE="update mungeno_member set mpw=?,mname=?,mregion=?,maddress=?,memail=? where mid=?";
	private final String MEMBER_DELETE="delete mungeno_member where mid=?";
	private final String MEMBER_UPDATE_PW="update mungeno_member set mpw=(SELECT DBMS_RANDOM.STRING('X', 8) STR FROM DUAL) where mid=?";

	// 회원가입
	public void insertMember(MemberVO vo) {
		System.out.println("MemberDAO Log : insertMember() process");
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(MEMBER_INSERT);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getMpw());
			pstmt.setString(3, vo.getMname());
			pstmt.setString(4, vo.getMregion());
			pstmt.setString(5, vo.getMaddress());
			pstmt.setString(6, vo.getMemail());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}

	// 로그인&회원상세
	public MemberVO getMember(MemberVO vo) {
		System.out.println("MemberDAO Log : getMember() process");
		MemberVO data=null;
		
		// 날짜 표기방식 설정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(MEMBER_SELECTONE);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getMpw());
			rs = pstmt.executeQuery();
			
			if(vo.getMpw()!=null) {//로그인
				pstmt=conn.prepareStatement(MEMBER_SELECTONE);
				pstmt.setString(1, vo.getMid());
				pstmt.setString(2, vo.getMpw());
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					if (rs.getString("mpw").equals(vo.getMpw())) {
						data = new MemberVO();
						data.setMid(rs.getString("mid"));
						data.setMname(rs.getString("mname"));
						data.setMpw(rs.getString("mpw"));
						data.setMregion(rs.getString("mregion"));
						data.setMaddress(rs.getString("maddress"));
						data.setMemail(rs.getString("memail"));
						data.setStartdate(rs.getDate("startdate"));
						data.setTransdate(sdf.format(rs.getDate("startdate")));
						data.setMpoint(rs.getInt("mpoint"));
					}
				}
				// 회원상세
				else {
					pstmt = conn.prepareStatement(MEMBER_SELECTONE);
					pstmt.setString(1, vo.getMid());
					ResultSet rs1 = pstmt.executeQuery();

					if (rs1.next()) {
						data = new MemberVO();
						data.setMid(rs.getString("mid"));
						data.setMname(rs.getString("mname"));
						data.setMpw(rs.getString("mpw"));
						data.setMregion(rs.getString("mregion"));
						data.setMaddress(rs.getString("maddress"));
						data.setMemail(rs.getString("memail"));
						data.setTransdate(sdf.format(rs.getDate("startdate")));
						data.setMpoint(rs.getInt("mpoint"));
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
		// System.out.println(data);
		return data;
	}

	// 회원수정
	public void updateMember(MemberVO vo) {
		System.out.println("MemberDAO Log : updateMember() process");
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(MEMBER_UPDATE);
			pstmt.setString(1, vo.getMpw());
			pstmt.setString(2, vo.getMname());
			pstmt.setString(3, vo.getMregion());
			pstmt.setString(4, vo.getMaddress());
			pstmt.setString(5, vo.getMemail());
			pstmt.setString(6, vo.getMid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}

	// 회원탈퇴
	public void deleteMember(MemberVO vo) {
		System.out.println("MemberDAO Log : deleteMember() process");
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(MEMBER_DELETE);
			pstmt.setString(1, vo.getMid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}
	
	// 비밀번호 발송
	public void searchPassword(MemberVO vo) {
		System.out.println("MemberDAO Log : updateMpw() process");
		conn=JDBCUtil.connect();
		try {
			conn.setAutoCommit(false); // 트랜잭션
			
			// 비밀번호 변경
			pstmt=conn.prepareStatement(MEMBER_UPDATE_PW);
			pstmt.setString(1, vo.getMid());
			pstmt.executeUpdate();
			
			// 회원정보 추출
			pstmt = conn.prepareStatement("select * from mungeno_member where mid=?");
			pstmt.setString(1, vo.getMid());
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new MemberVO();
				vo.setMid(rs.getString("mid"));
				vo.setMpw(rs.getString("mpw"));
				vo.setMemail(rs.getString("memail"));
			}
			
			System.out.println("멤버DAO2 : "+vo.getMid()+", "+vo.getMpw()+", "+vo.getMemail());
			
			APISet api=new APISet();
			
			System.out.println("컨트롤러: "+vo.getMemail()+", "+vo.getMpw());
			
			api.sendMail(vo.getMemail(), vo.getMpw());
						
			conn.commit();
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}
	
	// 아이디 중복 체크
	public MemberVO checkId(MemberVO vo) {
		System.out.println("MemberDAO Log : checkId() process");
		MemberVO data=null;
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement("SELECT * FROM MUNGENO_MEMBER WHERE MID=?");
			pstmt.setString(1, vo.getMid());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				data=new MemberVO();
				data.setMid(rs.getString("mid"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
		return data;
	}
	
	// 별명 중복 체크
	public MemberVO checkName(MemberVO vo) {
		System.out.println("MemberDAO Log : checkId() process");
		MemberVO data=null;
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement("SELECT * FROM MUNGENO_MEMBER WHERE MNAME=?");
			pstmt.setString(1, vo.getMname());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				data=new MemberVO();
				data.setMid(rs.getString("mname"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
		return data;
	}
}