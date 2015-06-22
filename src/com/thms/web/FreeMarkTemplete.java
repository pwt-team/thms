package com.thms.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.thms.bean.MyFile;
import com.thms.dao.update.BaseDao;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;



public class FreeMarkTemplete implements ServletContextAware {

	private ServletContext servletContext;
	

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}

	
	public void applicationContextTest(){
		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		BaseDao baseDao = (BaseDao) context.getBean("BaseDao");
		
		String[] name = context.getBeanDefinitionNames();
		
		
	}
	
	
	public static void main(String[] args) {

		
		
		Configuration cfg = new Configuration();
		String localPath = "模板路径,如:D://freemarker";
		try {
			//注册自定义标签1
			//cfg.setSharedVariable("自定义标签名1", new 类名1);
			//注册自定义标签2
			//cfg.setSharedVariable("自定义标签名2", new 类名2);
			
			
			
			
			cfg.setDirectoryForTemplateLoading(new File(localPath));
	
			cfg.setObjectWrapper(new DefaultObjectWrapper());
			
			Template template = cfg.getTemplate("模板名称,如：templete.html");
			
			Map<String, Object> data = new HashMap<String, Object>();
			
			data.put("key", "value");
			
			//添加一个list
			List<MyFile> myFiles = new ArrayList<MyFile>();
			data.put("myFiles", myFiles);
			
			
			FileOutputStream out = new FileOutputStream("新文件保存地址");
			
			Writer writer = new OutputStreamWriter(out);
			
			template.process(data, writer);
			
			out.flush();
			out.close();
		
		} catch (IOException | TemplateException e) {
			e.printStackTrace();
		}
		
		
	}



}
