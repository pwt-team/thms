package com.thms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value="/buy")
public class BuyController {
	
	@RequestMapping(value="/shelf")
	public String shelf(){
		return "buy/shelf";
	}
	
	@RequestMapping(value="/confirm")
	public String confirm(){
		return "buy/confirm";
	}	
	
	@RequestMapping(value="/submit")
	public String submit(){
		return "buy/submit";
	}		

}
