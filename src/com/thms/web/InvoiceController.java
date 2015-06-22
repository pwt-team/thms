package com.thms.web;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thms.bean.AjaxMessages;
import com.thms.bean.Invoice;
import com.thms.bean.User;
import com.thms.service.InvoiceService;
import com.thms.service.UserService;
/**
 * ClassName: InvoiceController 
 * @Description: 发票控制器
 * @author yuanzhong
 * @date 2015年6月17日  上午1:36:03
 */
@Controller
@RequestMapping(value="/invoice")
public class InvoiceController {
	
	@Autowired
	public UserService userService;
	@Autowired
	public InvoiceService invoiceService;
	
	/**
	 * @Description: 保存发票
	 * @param @param uid
	 * @param @param name
	 * @return ModelAndView  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月17日 上午1:38:29
	 */
	@RequestMapping(value="/save",method=RequestMethod.POST)
	@ResponseBody
	public AjaxMessages create(@RequestParam Integer uid,
			@RequestParam String name,
			@RequestParam (required=false) String shortName,
			@RequestParam (required=false) Integer id) {
		Invoice invoice = null;
		//发票抬头不能为空
		if(StringUtils.isEmpty(name))  return new AjaxMessages(false, "发票抬头不能为空!");
		//先确认用户是否存在
		User user = userService.findUser(uid);
		if(user == null)  return new AjaxMessages(false, "用户不存在");
		
		//保存发票
		invoice = invoiceService.findInvoice(id);
		if(invoice == null){
			//保存前先确认发票是否已存在,如果不存在则继续保存
			invoice = invoiceService.findInvoice(name,uid);
			if(invoice != null)  return new AjaxMessages(false, "发票已存在");
			//保存新发票
			invoice = new Invoice();
			invoice.setShortName(shortName);
			invoice.setName(name);
			invoice.setUser(user);
			invoice = invoiceService.create(invoice);
		}else{
			invoice.setName(name);
			invoice.setShortName(shortName);
			invoice = invoiceService.update(invoice);
		}
		//mv.addObject(invoice);
		List<Invoice> invoices = new ArrayList<Invoice>();
		invoices = invoiceService.findInvoices(uid);
		
		return new AjaxMessages(true, invoices);
	}
	


}
