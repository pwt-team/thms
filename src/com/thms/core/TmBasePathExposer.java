package com.thms.core;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

/**
 * ClassName: TmBasePathExposer 
 * @Description: 获取项目根目录
 * @author yuanzhong
 * @date 2015年6月20日  上午12:19:44
 */
public class TmBasePathExposer implements ServletContextAware {

	private ServletContext servletContext;
	private String basePath;

	public void init() {
		
//		String version = "1.0";
		getServletContext().setAttribute("basePath",getServletContext().getContextPath() );

	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	public String getBasePath() {
		return basePath;
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
