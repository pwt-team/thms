package com.thms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	
	@RequestMapping(value="/admin.jxp")
	public String admin(){
		return "admin/admin";
	}

}
