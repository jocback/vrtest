package com.example.vrtest.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SampleController {

	/**
	 * @title vrTest 샘플페이지
	 */
	@RequestMapping(value="/", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView vrtest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vrtest");
		return mv;
	}
}
