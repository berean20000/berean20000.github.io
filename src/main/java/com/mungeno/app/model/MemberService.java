package com.mungeno.app.model;

public interface MemberService {
	public void insertMember(MemberVO vo); // 회원가입
	public MemberVO getMember(MemberVO vo); // 로그인&회원상세
	public void updateMember(MemberVO vo); // 회원수정
	public void deleteMember(MemberVO vo); // 회원삭제
	public void searchPassword(MemberVO vo); // 비밀번호찾기
	
	public MemberVO checkId(MemberVO vo); // 아이디중복확인
	public MemberVO checkName(MemberVO vo); // 별명중복확인
}