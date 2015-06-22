package com.thms.web;

import java.util.Date;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.User;
import com.thms.common.Constants;
import com.thms.service.RegisterValidateService;
import com.thms.service.UserService;
import com.thms.util.JsonResult;
import com.thms.util.MD5Util;
import com.thms.util.mail.ServiceException;
/**
 * 
 * ClassName: RegisterController 
 * @Description: 会员注册
 * @author yuanzhong
 * @date 2015年6月4日  下午10:40:06
 */
@Controller
public class RegisterController {
     
    @Resource
    private RegisterValidateService service;
    @Autowired
    private UserService userService;
    
    
    Logger log = Logger.getLogger(this.getClass());  
    
    
    /**
     * 
     * @Description: 注册第一步:帐号(邮箱)注册及激活
     * @param @return   
     * @return String  
     * @throws
     * @author yuanzhong
     * @date 2015年6月4日 下午10:38:39
     */
	@RequestMapping("/register")
	public String register(HttpSession session){
		session.removeAttribute(Constants.LOGIN_KEY);
		session.invalidate();
		return "customer/register";
	}

    
    /**
     * 
     * @Description: 注册第二步:手机验证
     * @param @return   
     * @return String  
     * @throws
     * @author yuanzhong
     * @date 2015年6月4日 下午10:38:39
     */
    @RequestMapping(value = "/activate")
    public String activate(){
    	return "customer/activate";
    }   
    
    /**
     * 
     * @Description: 注册第三步:会员资料填写
     * @param @return   
     * @return String  
     * @throws
     * @author yuanzhong
     * @date 2015年6月4日 下午10:38:15
     */
    @RequestMapping(value = "/profile.jxp")
    public String profile(){
    	return "customer/profile";
    }    
    
    /**
     * 
     * @Description: 完成注册页面
     * @param @return   
     * @return String  
     * @throws
     * @author yuanzhong
     * @date 2015年6月5日 上午12:35:22
     */
    @RequestMapping(value = "/complete.jxp")
    public String complete(){
    	return "customer/complete";
    }   
    
    /**
     * @Description: 会员帐号注册方法
     * @param @param request
     * @param @param response
     * @param @throws MessagingException
     * @param @throws Exception   
     * @return ModelAndView  
     * @throws
     * @author yuanzhong
     * @date 2015年6月4日 下午10:39:36
     */
	@RequestMapping(value="/email/register",method=RequestMethod.POST)
	@ResponseBody
    public JsonResult register(
    		@RequestParam String email,
    		@RequestParam (required = false)String pwd,
    		@RequestParam String action,
    		HttpServletRequest request,
    		HttpServletResponse response) throws MessagingException,Exception{
    	JsonResult json = new JsonResult(true);
    	/* 邮箱和密码为空时,返回并提示失败 */
    	if(StringUtils.isEmpty(email) || StringUtils.isEmpty(action)){
    		return json.msg("info_isNull");
    	}
        if("register".equals(action)) {
            //注册
        	User user = userService.findUser(email);
        	if(user == null){
        		user = new User();
        		user.setEmail(email);
        		user.setPassword(pwd);
        		user.setStatus(Constants.NEW);
        		user.setRegisterTime(new Date());
        		user.setValidateCode(MD5Util.encode2hex(email));
        		user.setCreatedTime(new Date());
        		user = userService.create(user);
        		log.info(">>> 恭喜您,用户 [" + email + " ] 信息已注册成功！");
	            service.processregister(email,user);//发邮箱激活
	            json.msg("send_success");
        	}else{
        		log.info(">>> 注册失败,用户 [" + email + " ] 已存在！");
	            json.msg("email_exist");
        	}
        } 
        return json;
    }
  
	
	/**
	 * 
	 * @Description: 邮箱激活方法
	 * @param @param email
	 * @param @param action
	 * @param @return
	 * @param @throws MessagingException
	 * @param @throws Exception   
	 * @return ModelAndView  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月14日 下午1:18:29
	 */
	@RequestMapping(value="/email/activate",method={RequestMethod.GET,RequestMethod.POST})
    public ModelAndView activate(
    		@RequestParam String email,
    		@RequestParam String action,
    		HttpServletRequest request,
    		HttpServletResponse response) throws MessagingException,Exception{
    	ModelAndView mv = new ModelAndView();
    	/* 邮箱和密码为空时,返回并提示失败 */
    	if(StringUtils.isEmpty(email) || StringUtils.isEmpty(action)){
    		mv.setViewName("customer/register");
    		return mv;
    	}
        if("activate".equals(action)) {
            //激活
            String validateCode = request.getParameter("validateCode");//激活码
            try { 
            	service.processActivate(email , validateCode);//调用激活方法
	            mv.addObject("result", "active_success");
	            mv.setViewName("customer/myspace");
    		} catch (ServiceException e) {
	            mv.addObject("result", "active_fail");
	            mv.setViewName("customer/register");
			}
        }
        return mv;
    }
	
	
}
