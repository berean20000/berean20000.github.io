package com.mungeno.app.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mungeno.app.model.BuylistVO;
import com.mungeno.app.model.MemberService;
import com.mungeno.app.model.MemberVO;
import com.mungeno.app.model.ProductService;

@Controller
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public String login(MemberVO vo,HttpSession session,Model model) throws ParseException {
		System.out.println("MemberController Log : login.do request");
		vo=memberService.getMember(vo);
		if(vo==null){
			model.addAttribute("msg","로그인 정보가 올바르지 않습니다.");
			return "main.do";
		}
		//session.setAttribute("member", vo);
		model.addAttribute("member",vo);
		
		// 금연 D-Day 계산
		String todayFm=new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis())); // 오늘날짜
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		Date date=new Date(dateFormat.parse(vo.getTransdate()).getTime());
		Date today=new Date(dateFormat.parse(todayFm).getTime());

		long calculate=date.getTime()-today.getTime();
		int days=(int)(calculate/( 24*60*60*1000));
		int ddays=(days*-1)+1;
		
		session.setAttribute("day",ddays);
		//model.addAttribute("day",ddays);
		
		return "redirect:main.do";
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session,Model model) {
		System.out.println("MemberController Log : logout.do request");
		session.invalidate();
		
		MemberVO vo=new MemberVO();
		model.addAttribute("member",vo);
		
		// return "login.jsp";
		return "main.do";
	}
	@RequestMapping("/mypage.do")
	public String mypage(MemberVO vo,BuylistVO bvo,HttpSession session,Model model) {
		System.out.println("MemberController Log : mypage.do request");
		// vo=memberDAO.getMember(vo);
		
		// 구매이력 리스트
		List<BuylistVO> datas=productService.getBuylist(bvo);
		model.addAttribute("datas",datas);
		
		// session갱신
		vo=memberService.getMember(vo);
		//session.setAttribute("member", vo);
		model.addAttribute("member",vo);
		
		return "mypage.jsp";
	}
	@RequestMapping("/insertMember.do")
	public String insertMember(MemberVO vo,Model model) {
		System.out.println("MemberController Log : insert.do request");
		memberService.insertMember(vo);
		model.addAttribute("msg","회원 가입이 완료되었습니다.");
		return "main.do";
	}
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO vo,Model model,HttpSession session) {
		System.out.println("MemberController Log : deleteMember.do request");
		memberService.deleteMember(vo);
		
		session.invalidate();
		vo=new MemberVO();
		model.addAttribute("member",vo);
		return "main.do";
	}
	@RequestMapping("/updateMember.do")
	public String updateMember(MemberVO vo,Model model,HttpSession session) {
		System.out.println("MemberController Log : updateMember.do request");
		memberService.updateMember(vo);
		session.setAttribute("member", vo);
		//return "redirect:main.do";
		return "mypage.do";
	}
	
	@RequestMapping("/searchPassword.do")
	public String searchPassword(MemberVO vo,Model model) {
		System.out.println("MemberController Log : searchPassword.do request");
		memberService.searchPassword(vo);
		model.addAttribute("msg","임시 비밀번호를 메일로 발송했습니다.");
		return "findPassword.jsp";
	}
}