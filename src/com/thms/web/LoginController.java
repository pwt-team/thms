package com.thms.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thms.bean.User;
import com.thms.common.Constants;
import com.thms.service.UserService;
import com.thms.util.JsonResult;
/**
 * 
 * ClassName: LoginController 
 * @Description: 控制用户登录与注销
 * @author yuanzhong
 * @date 2015年6月14日  下午5:40:37
 */
@Controller
public class LoginController {
	@Autowired
	public UserService userService;
	
	Logger log = Logger.getLogger(this.getClass());  
	
	/**
	 * @Description: 通过注册邮箱登录方法
	 * @param @param email
	 * @param @param pwd
	 * @param @return   
	 * @return ModelAndView  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月14日 下午1:42:03
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult login(@RequestParam String email,@RequestParam String pwd,
			@RequestParam (required = false) Integer iskeep,
			HttpServletRequest request,HttpServletResponse response){
		JsonResult json = new JsonResult(true);
		User user = userService.findUser(email,pwd);
		if(user != null){
			request.getSession().setAttribute(Constants.LOGIN_KEY, user);
			if(iskeep != null){
				Cookie cookie = new Cookie("loginUser", email);
				//时间最小单位:秒
				cookie.setMaxAge(iskeep * 24 * 60 * 60);
				cookie.setPath("/");
				response.addCookie(cookie);
			}
			Integer status = user.getStatus();
			if(status == Constants.ACTIVE){
				log.info(">> [" +email+"] 用户存在,当前状态已激活！");
				json.msg("active");
			}
			else if(status == Constants.NEW){
				log.info(">> [" +email+"] 用户存在,当前状态未激活！");
				json.msg("new");				
			}			
			else if(status == Constants.HOLD){
				log.info(">> [" +email+"] 用户存在,当前状态已锁定！");
				json.msg("hold");				
			}
		}else{
			log.info(">> [" +email+"] 用户不存在！");
			json.msg("fail");
		}
		return json;
	}
	
	
	
	/**
	 * @Description: 注销登录
	 * @param @param session
	 * @param @param request
	 * @param @param response
	 * @param @throws Exception   
	 * @return void  
	 * @author yuanzhong
	 * @date 2015年6月14日 下午4:15:20
	 */
	@RequestMapping(value="/logout",method=RequestMethod.GET )
	public void logout(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws Exception{
		session.removeAttribute(Constants.LOGIN_KEY); 
		session.invalidate();
        response.sendRedirect("index.jsp");  
	}
	
	

}
