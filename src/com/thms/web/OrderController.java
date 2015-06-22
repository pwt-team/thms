package com.thms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/order")
public class OrderController {
	
	@RequestMapping(value="/add.jxp")
	public String add(){
		return "order/add";
	}
	
	
	@RequestMapping(value="/edit.jxp")
	public String edit(){
		return "order/edit";
	}
	
	
	@RequestMapping(value="/setting.jxp")
	public String setting(){
		return "order/setting";
		
	}
	@RequestMapping(value="/page.jxp")
	public String page(){
		return "order/page";
		
	}
}
