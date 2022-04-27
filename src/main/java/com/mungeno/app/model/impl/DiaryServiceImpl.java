package com.mungeno.app.model.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mungeno.app.model.DiaryService;
import com.mungeno.app.model.DiaryVO;
import com.mungeno.app.model.ReplyVO;

@Service("diaryService")
public class DiaryServiceImpl implements DiaryService {

	@Autowired
	private DiaryDAO diaryDAO;

	@Override
	public void insertDiary(DiaryVO vo) {
		diaryDAO.insertDiary(vo);
	}

	@Override
	public DiaryVO getDiary(DiaryVO vo) {
		return diaryDAO.getDiary(vo);
	}

	@Override
	public ArrayList<DiaryVO> getDiaryList(DiaryVO vo,int listCnt) {
		return diaryDAO.getDiaryList(vo, listCnt);
	}

	@Override
	public void updateDiary(DiaryVO vo) {
		diaryDAO.updateDiary(vo);
	}
	
	@Override
	public void recommandDiary(DiaryVO vo) {
		diaryDAO.recommandDiary(vo);
	}

	@Override
	public void deleteDiary(DiaryVO vo) {
		diaryDAO.deleteDiary(vo);
	}

	@Override
	public void insertReply(ReplyVO vo) {
		diaryDAO.insertReply(vo);
	}
	
	@Override
	public ArrayList<ReplyVO> getReplyList(ReplyVO vo) {
		return diaryDAO.getReplyList(vo);
	}

	@Override
	public void updateReply(ReplyVO vo){
		diaryDAO.updateReply(vo);
	}

	@Override
	public void deleteReply(ReplyVO vo){
		diaryDAO.deleteReply(vo);
	}
}