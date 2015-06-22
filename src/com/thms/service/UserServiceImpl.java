package com.thms.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.User;
import com.thms.dao.UserDao;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public User findUser(String email) {
		if(StringUtils.isNotEmpty(email)){
			return userDao.find(email);
		}
		return null;
	}

	@Override
	public User create(User user) {
		if(user != null){
			return userDao.save(user);
		}
		return null;
	}

	@Override
	public User findUser(String email, String pwd) {
		if(StringUtils.isNotEmpty(email) && StringUtils.isNotEmpty(pwd)){
			return userDao.find(email,pwd);
		}
		return null;
	}

	@Override
	public User findUser(Integer uid) {
		if(uid != null){
			return userDao.find(uid);
		}
		return null;
	}

	@Override
	public User update(User user) {
		if(user== null) return null;
		return userDao.update(user);
	}

	@Override
	public User findUser(Integer uid, String oldPwd) {
		if(uid != null && StringUtils.isNotEmpty(oldPwd)){
			return userDao.find(uid,oldPwd);
		}
		return null;
	}

}
