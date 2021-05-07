package com.ssafy.happyhouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.service.HouseService;

@Controller
@RequestMapping("/house")
public class HouseController {
	
	@Autowired
	private HouseService houseService;
	
	
	@GetMapping("/search")
	public String mvsearch(@ModelAttribute PageBean bean, Model model)throws Exception {
		model.addAttribute("list", houseService.searchHouse(bean) );
		return "houseinfo";
	}
	
	
}
