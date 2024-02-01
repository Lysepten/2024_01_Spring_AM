package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	@RequestMapping("/usr/home/main")
	public String showMain() {

		return "/usr/home/main";
	}

	@RequestMapping("/")
	public String showRoot() {

		return "redirect:/usr/home/main";
	}
	
//	@RequestMapping("/usr/article/list")
//	public String showlist() {
//
//		return "/usr/article/list";
//	}
	
	@RequestMapping("/list")
	public String showlistRoot() {

		return "redirect:/usr/article/getArticles";
	}
}