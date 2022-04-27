package com.mungeno.app.model.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mungeno.app.model.MemberService;
import com.mungeno.app.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		memberDAO.deleteMember(vo);
	}

	@Override
	public void searchPassword(MemberVO vo) {
		memberDAO.searchPassword(vo);
	}

	@Override
	public MemberVO checkId(MemberVO vo) {
		return memberDAO.checkId(vo);
	}

	@Override
	public MemberVO checkName(MemberVO vo) {
		return memberDAO.checkName(vo);
	}
}