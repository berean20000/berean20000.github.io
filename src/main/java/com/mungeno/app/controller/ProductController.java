package com.mungeno.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mungeno.app.model.BuylistVO;
import com.mungeno.app.model.MemberVO;
import com.mungeno.app.model.ProductService;
import com.mungeno.app.model.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/product.do")
	public String getProductList(@RequestParam(value="searchCondition",defaultValue="pname",required=false)String sc,@RequestParam(value="searchKeyword",defaultValue="",required=false)String sk,ProductVO vo,Model model) {
		int listCnt=5;
		List<ProductVO> datas=productService.getProductList(vo, listCnt);
		model.addAttribute("datas",datas);
		return "product.jsp";
	}
	@RequestMapping(value="/productDetails.do")
	public String getProduct(ProductVO vo,BuylistVO rvo,Model model) {
		vo=productService.getProduct(vo);
		model.addAttribute("pdata", vo);
		return "productDetails.jsp";
	}
	@RequestMapping(value="/buyProduct.do")
	public String buyProduct(ProductVO vo,MemberVO mvo,HttpSession session,Model model) {
		System.out.println("ProductController Log : buyProduct request");
		productService.buyProduct(vo,mvo);
		vo=productService.getProduct(vo);
		model.addAttribute("pdata", vo);
		return "productDetails.do";
		// return "productdetails.do?pid="+vo.getPid();
	}
	@RequestMapping(value="/deleteBuylist.do")
	public String deleteBuylist(BuylistVO vo) {
		productService.deleteBuylist(vo);

		return "main.do";
		//return "redirect:mypage.do?mid="+vo.getMid();
	}
}