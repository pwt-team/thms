package com.thms.service;

import javax.mail.internet.ParseException;

import com.thms.bean.User;
import com.thms.util.mail.ServiceException;

public interface RegisterValidateService {

	public void processregister(String email, User user);

	public void processActivate(String email, String validateCode) throws ServiceException,ParseException;

}
