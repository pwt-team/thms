package com.thms.core;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.User;
import com.thms.common.Constants;

public class LoginInterceptor implements HandlerInterceptor {
	
	Logger log = Logger.getLogger(this.getClass());  

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object obj, Exception e)
			throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		//首先验证session是否有效
		User user = (User) request.getSession().getAttribute(Constants.LOGIN_KEY);
		if(user == null){
			//session失效情况下,再检查COOKIE是否有效
			Cookie[] cookies = request.getCookies();
			if(cookies != null && cookies.length > 0){
				for (Cookie cookie : cookies) {
					if(cookie.getName().equals("loginUser")){
						return true;
					}
				}
			}
			response.sendRedirect("../home.jsp");
			log.info(">>> 对不起,您还未登录!");
			return false;
		}
		return true;
	}

}
