package com.thms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/trade")
public class PayController {
	
	
	@RequestMapping(value="/pay.jxp")
	public String pay(){
		return "trade/pay";
	}

}
