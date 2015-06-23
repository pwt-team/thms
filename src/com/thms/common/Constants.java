package com.thms.common;

public interface Constants {
	
	/* 通用状态  */
	public static final Integer NEW = 0; 			   	   //新生成的,用户里用作未激活状态
	public static final Integer ACTIVE = 1; 		  	  //已激活状态
	public static final Integer RELEASED = 2; 		 	 //已发布状态
	public static final Integer HOLD = 3; 				//已锁定状态
	public static final Integer CLSD = 4; 			   //已结算
	
	
	
	public static final Integer COMPLATED = 9; 		  //已完成的
	public static final Integer DELETED = -1; //已删除状态
	
	public static final String LOGIN_KEY = "user"; //登录用户标识
	
	/* 性别  */
	public static final Integer MAN = 1; //男
	public static final Integer WOMAN = 2; //女
	public static final Integer UNKNOWN = 3; //未知
	
	
	/* 消息类 */
	public static final String SUCCESS = "success"; //success
	public static final String FAIL = "fail";       //fail
	public static final String SUCCESS_TO_CREATED = "恭喜您,添加成功！";
	public static final String SUCCESS_TO_DELETED = "恭喜您,删除成功！";
	public static final String SUCCESS_TO_UPDATED = "恭喜您,修改成功！";
	public static final String SUCCESS_TO_ACTVED = "恭喜您,激活成功！";
	
	public static final String SUCCESS_TO_EMAIL_SEND = "恭喜您,邮件发送成功！";
	
	public static final String PENDING_TO_EXIST = "已存在,请确认后重试！";
	
	public static final String ERROR_TO_FAIL = "抱歉,操作失败！";
	
	
	/* server */
	public static final String DOMAIN = "http://localhost:8080";
	
	/* 网站名称 */
	public static final String SITENAME = "惠宇茶社";
}
