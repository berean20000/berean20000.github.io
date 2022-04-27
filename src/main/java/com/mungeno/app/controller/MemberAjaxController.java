package com.mungeno.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mungeno.app.model.MemberService;
import com.mungeno.app.model.MemberVO;

@Controller
public class MemberAjaxController {

	@Autowired
	private MemberService memberService;

	@ResponseBody
	@RequestMapping(value="/checkId.do")
	public String checkId(MemberVO vo) {
		System.out.println("AjaxController Log : checkId.do request");
		MemberVO data = memberService.checkId(vo);
		String result;
		if(data == null){
			result = "0"; // 사용가능 아이디
		}else{
			result = "1"; // 사용불가 아이디
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value="/checkName.do")
	public String checkName(MemberVO vo) {
		System.out.println("AjaxController Log : checkName.do request");
		MemberVO data = memberService.checkName(vo);
		String result;
		if(data == null){
			result = "0"; // 사용가능 별명
		}else{
			result = "1"; // 사용불가 별명
		}
		return result;
	}
}