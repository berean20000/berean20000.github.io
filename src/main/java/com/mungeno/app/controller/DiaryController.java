package com.mungeno.app.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.mungeno.app.model.DiaryService;
import com.mungeno.app.model.DiaryVO;
import com.mungeno.app.model.ReplyVO;

@Controller
@SessionAttributes("data")
public class DiaryController {

	@Autowired
	private DiaryService diaryService;

	@ModelAttribute("conMap") // 검색기능, 최우선 수행
	public Map<String,String> searchConditionMap() {
		Map<String,String> conMap=new HashMap<String,String>();
		conMap.put("제목","dtitle");
		conMap.put("작성자","dwriter");
		conMap.put("지역","mregion");
		return conMap; // 반환값은 자동으로 Model에 저장
	}

	@RequestMapping(value="/main.do")
	public String getDiaryList(@RequestParam(value="searchCondition",defaultValue="dtitle",required=false)String sc,@RequestParam(value="searchKeyword",defaultValue="",required=false)String sk,DiaryVO vo,Model model) {

		// [Null 체크]를 로직의 가장 처음에 수행
		if(vo.getSearchCondition()==null) {
			// main
			vo.setSearchCondition("dtitle");
		}
		if(vo.getSearchKeyword()==null) {
			// 검색어 미입력
			vo.setSearchKeyword("");
		}

		int listCnt=5;
		List<DiaryVO> datas=diaryService.getDiaryList(vo, listCnt);
		model.addAttribute("datas",datas);
		return "main.jsp";
	}

	@RequestMapping(value="/main.do",method=RequestMethod.GET)
	public String getDiaryListM(@RequestParam(value="searchCondition",defaultValue="dtitle",required=false)String sc,@RequestParam(value="searchKeyword",defaultValue="",required=false)String sk,DiaryVO vo,Model model) throws ParseException{
		
		// [Null 체크]를 로직의 가장 처음에 수행
		if(vo.getSearchCondition()==null) {
			// main
			vo.setSearchCondition("dtitle");
		}
		if(vo.getSearchKeyword()==null) {
			// 검색어 미입력
			vo.setSearchKeyword("");
		}

		int listCnt=5;
		List<DiaryVO> datas=diaryService.getDiaryList(vo, listCnt);
		model.addAttribute("datas",datas);
		
		return "main.jsp";
	}

	@RequestMapping(value="/details.do")
	public String getDiary(DiaryVO vo,ReplyVO rvo,Model model) {
		// 일지 상세
		vo=diaryService.getDiary(vo);
		model.addAttribute("data", vo);

		// 댓글 리스트
		List<ReplyVO> rdatas=diaryService.getReplyList(rvo);
		model.addAttribute("rdatas", rdatas);
		return "diarydetails.jsp";
	}

	@RequestMapping(value="/insertDiary.do")
	public String insertDiary(DiaryVO vo) throws IllegalStateException, IOException {
		// 파일업로드 로직
		MultipartFile uploadFile=vo.getUploadFile();
		// 파일 저장 경로
		// String filepath="H:\\sjkim\\workspace\\mungeno\\src\\main\\webapp\\images\\upload\\";
		String filepath="D:\\2021_ksj\\resource\\mungeno\\src\\main\\webapp\\images\\upload\\";
		// 파일명 변경
		StringBuffer sb=new StringBuffer();
		// 파일명 중복을 피하기 위해 날짜 붙이기
		Date now = new Date();
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String timeName=df.format(now);

		if(!uploadFile.isEmpty()) {
			// 로직수행
			String fileName=uploadFile.getOriginalFilename();

			// 파일명 변경
			int nameEnd=fileName.indexOf(".");
			sb.append(fileName);
			StringBuffer sbName=sb.replace(0, nameEnd, "img_"+timeName);
			String newFileName=sbName.toString();
			uploadFile.transferTo(new File(filepath+newFileName));

			vo.setDimg(newFileName);
		}
		else {
			vo.setDimg("no_image.png");
		}

		diaryService.insertDiary(vo);

		return "redirect:main.do";
	}

	@RequestMapping(value="/deleteDiary.do")
	public String deleteDiary(DiaryVO vo) {
		diaryService.deleteDiary(vo);
		return "redirect:main.do";
	}

	@RequestMapping(value="/updateDiary.do")
	public String updateDiary(@ModelAttribute("data")DiaryVO vo) {
		System.out.println("DiaryController Log : updateDiary.do request");
		System.out.println(vo);
		diaryService.updateDiary(vo);
		//return "redirect:main.do";
		return "redirect:details.do?did="+vo.getDid();
	}

	@RequestMapping(value="/recommandDiary.do")
	public String recommandDiary(@ModelAttribute("data")DiaryVO vo) {
		diaryService.recommandDiary(vo);
		return "redirect:details.do?did="+vo.getDid();
	}

	@RequestMapping(value="/insertReply.do")
	public String insertReply(ReplyVO vo) {
		System.out.println("DiaryController Log : insertDiary.do request");
		System.out.println("vo "+vo);
		diaryService.insertReply(vo);
		return "redirect:details.do?did="+vo.getDid();
	}

	@RequestMapping(value="/updateReply.do")
	public String updateReply(ReplyVO vo) {
		diaryService.updateReply(vo);
		return "redirect:details.do?did="+vo.getDid();
	}

	@RequestMapping(value="/deleteReply.do")
	public String deleteReply(ReplyVO vo) {
		diaryService.deleteReply(vo);
		return "redirect:details.do?did="+vo.getDid();
	}
}