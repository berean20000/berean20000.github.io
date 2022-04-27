package com.mungeno.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping(value="/signup.do")
	public String signup() {
		return "signup.jsp";
	}
	@RequestMapping(value="/findPassword.do")
	public String findPassword() {
		return "findPassword.jsp";
	}
	@RequestMapping(value="/about.do")
	public String about() {
		return "about.jsp";
	}
	@RequestMapping(value="/diaryInsert.do")
	public String diaryInsert() {
		return "diaryInsert.jsp";
	}
}