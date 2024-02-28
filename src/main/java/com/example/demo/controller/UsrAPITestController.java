package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrAPITestController {

	@RequestMapping("/usr/home/APITest")
	public String APITest() {

		return "/usr/home/APITest";
	}
	
	@RequestMapping("/usr/home/APITest2")
	public String APITest2() {

		return "/usr/home/APITest2";
	}
	
	@RequestMapping("/usr/home/keyword")
	@ResponseBody
	public String keyword(String keyword) {

		return keyword;
	}
}