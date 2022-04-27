package com.mungeno.app.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice("com.mungeno.app")
public class ExceptionHandlerCommon {
	@ExceptionHandler(IllegalArgumentException.class)
	public ModelAndView b(Exception e) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("excep",e);
		mav.setViewName("/error/error.jsp");
		return mav;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView a(Exception e) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("excep",e);
		mav.setViewName("/error/error.jsp");
		return mav;
	}
}