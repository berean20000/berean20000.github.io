package com.mungeno.app.model;

import java.util.ArrayList;

public interface DiaryService {
	public void insertDiary(DiaryVO vo); // 일지작성
	public DiaryVO getDiary(DiaryVO vo); // 일지상세
	public ArrayList<DiaryVO> getDiaryList(DiaryVO vo,int listCnt); // 일지목록
	public void updateDiary(DiaryVO vo); // 일지수정
	public void recommandDiary(DiaryVO vo); // 일지추천
	public void deleteDiary(DiaryVO vo); // 일지삭제
	public void insertReply(ReplyVO vo); // 댓글작성
	public ArrayList<ReplyVO> getReplyList(ReplyVO vo); // 댓글목록
	public void updateReply(ReplyVO vo); // 댓글추천
	public void deleteReply(ReplyVO vo); // 댓글삭제
}