package com.ssafy.happyhouse.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.service.MemberService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private MemberService userService;

	
	@GetMapping("/list")
	public String list(PageBean bean, Model model) throws Exception{
		model.addAttribute("members", userService.searchAll(bean));
		model.addAttribute("bean", bean);
		return "userAdmin";
	}
	
}
