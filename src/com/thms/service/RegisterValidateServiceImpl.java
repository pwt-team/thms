package com.thms.service;

import java.util.Date;

import javax.mail.internet.ParseException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.User;
import com.thms.common.Constants;
import com.thms.dao.UserDao;
import com.thms.util.mail.SendEmail;
import com.thms.util.mail.ServiceException;

@Service
public class RegisterValidateServiceImpl implements RegisterValidateService {

	@Autowired
	private UserDao userDao;
	
	Logger log = Logger.getLogger(this.getClass());  

	/**
	 * 处理注册
	 */
	public void processregister(String email, User user) {
		// /邮件的内容
		StringBuffer sb = new StringBuffer("欢迎注册" + Constants.SITENAME + ",点击下面链接激活账号,48小时有效,否则重新注册账号,链接只能使用一次,请尽快激活！<br>");
		sb.append("<a href=" + Constants.DOMAIN + "/thms/email/activate?action=activate&email=");
		sb.append(email);
		sb.append("&validateCode=");
		sb.append(user.getValidateCode()+">");
		sb.append(Constants.DOMAIN+ "/thms/email/activate?action=activate&email=");
		sb.append(email);
		sb.append("&validateCode=");
		sb.append(user.getValidateCode());
		sb.append("</a>");

		// 发送邮件
		SendEmail.send(email, sb.toString());
		log.info(">>> 用户 [" + email + " ] 激活邮箱发送成功！");

	}

	/**
	 * 处理激活
	 * 
	 * @throws ServiceException
	 */
	// /传递激活码和email过来
	public void processActivate(String email, String validateCode)
			throws ParseException, ServiceException {
		// 数据访问层，通过email获取用户信息
		User user = userDao.find(email);
		// 验证用户是否存在
		if (user != null) {
			// 验证用户激活状态
			if (user.getStatus() == Constants.NEW) {
				// /没激活
				Date currentTime = new Date();// 获取当前时间
				// 验证链接是否过期
				currentTime.before(user.getRegisterTime());
				if (currentTime.before(user.getLastActivateTime())) {
					// 验证激活码是否正确
					if (validateCode.equals(user.getValidateCode())) {
						// 激活成功， //并更新用户的激活状态，为已激活
						user.setStatus(Constants.ACTIVE);// 把状态改为激活
						user.setValidateTime(new Date());
						userDao.update(user);
						log.info(">>> 用户 [" + email + " ] 激活成功！");
					} else {
						log.info(">>> 用户 [" + email + " ] 激活码不正确！");
						throw new ServiceException("激活码不正确");
					}
				} else {
					log.info(">>> 用户 [" + email + " ] 激活码已过期！");
					throw new ServiceException("激活码已过期！");
				}
			} else {
				log.info(">>> 用户 [" + email + " ] 邮箱已激活！");
				throw new ServiceException("邮箱已激活，请登录！");
			}
		} else {
			log.info(">>> 用户 [" + email + " ] 邮箱地址不存在！");
			throw new ServiceException("该邮箱未注册（邮箱地址不存在）！");
		}

	}
}
