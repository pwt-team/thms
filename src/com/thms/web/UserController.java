package com.thms.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.Invoice;
import com.thms.bean.User;
import com.thms.common.Constants;
import com.thms.service.InvoiceService;
import com.thms.service.UserService;
import com.thms.util.JsonResult;
import com.thms.util.mail.SendEmail;
/**
 * ClassName: UserController 
 * @Description: 用户信息管理
 * @author yuanzhong
 * @date 2015年6月16日  上午1:39:48
 */
@Controller
@RequestMapping(value="/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private InvoiceService invoiceService;
    
    Logger log = Logger.getLogger(this.getClass());  
    
    /**
     * @Description: 编辑用户信息
     * @param @param user
     * @param @return   
     * @return ModelAndView  
     * @throws
     * @author yuanzhong
     * @date 2015年6月16日 上午1:39:36
     */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
    public ModelAndView edit(@RequestParam Integer uid,
    		@RequestParam (required=false)String name,
    		@RequestParam (required=false) String address,
    		@RequestParam (required=false) Date birthday,
    		@RequestParam (required=false) Integer sex,
    		@RequestParam (required=false) String phone){
    	ModelAndView view = new ModelAndView();
    	User user = userService.findUser(uid);
    	if(user != null){
    		user.setName(name);
    		user.setAddress(address);
    		user.setSex(sex);
    		user.setBirthday(birthday);
    		user.setPhone(phone);
    		user = userService.update(user);
    		log.info(">> 用户 [ " + user.getEmail() +" ] 信息修改成功!");
    	}
    	view.addObject(user);
    	view.setViewName("customer/myspace");
    	return view;
    }
	
	/**
	 * @Description: 修改用户密码
	 * @param @param uid
	 * @param @param oldPwd
	 * @param @param newPwd
	 * @param @return   
	 * @return JsonResult  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月18日 下午11:29:32
	 */
	@RequestMapping(value="/upadtePwd",method=RequestMethod.POST)
	@ResponseBody
    public JsonResult updatePwd(@RequestParam Integer uid,
    		@RequestParam (required=false) String oldPwd,
    		@RequestParam (required=false) String newPwd){
    	JsonResult json = new JsonResult(true);
    	User user = userService.findUser(uid,oldPwd);
    	if(user != null){
    		user.setPassword(newPwd);
    		user = userService.update(user);
    		json.put("flag", "success");
    		log.info(">> 用户 [ " + user.getEmail() +" ] 密码修改成功!");
    	}else{
    		json.put("flag", "fail");
    		log.info(">> UID用户 [ " + uid+" ] 密码修改失败!");
    	}
    	return json;
    }
	
	/**
	 * @Description: 根据邮箱找回密码
	 * @param @param email
	 * @param @return   
	 * @return JsonResult  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月19日 上午1:19:33
	 */
	@RequestMapping(value="/forget",method=RequestMethod.POST)
	@ResponseBody
    public JsonResult forgetPwd(@RequestParam String email){
    	JsonResult json = new JsonResult(true);
    	User user = userService.findUser(email);
    	if(user != null){
    		SendEmail.send(email, "text/html;charset=utf-8");
    		json.put("flag", "success");
    		log.info(">> 用户 [ " + email+" ] 忘记密码操作成功!");
    	}else{
    		json.put("flag", "fail");
    		log.info(">> 用户 [ " + email+" ] 不存在,忘记密码操作失败!");
    	}
    	return json;
    }
	
	/**
	 * @Description: 访问用户空间
	 * @param @param uid
	 * @param @param session
	 * @param @return   
	 * @return ModelAndView  
	 * @author yuanzhong
	 * @date 2015年6月14日 下午5:52:51
	 */
	@RequestMapping(value="/myspace")
	public ModelAndView myspace(
			@RequestParam (required=false) Integer uid,
			HttpSession session){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customer/myspace");
		User user = userService.findUser(uid);
		if(user == null){
			session.removeAttribute(Constants.LOGIN_KEY);
			session.invalidate();
		}else{
			List<Invoice> invoices = invoiceService.findInvoices(uid);
			mv.addObject("invoices",invoices);
			mv.addObject(user);
		}
		return mv;
	}
 

	
}
