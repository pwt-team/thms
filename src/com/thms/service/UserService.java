package com.thms.service;

import com.thms.bean.User;

public interface UserService {
	
	public User findUser(Integer uid);
	
	public User findUser(String email);

	public User create(User user);

	public User findUser(String email, String pwd);

	public User update(User user);

	public User findUser(Integer uid, String oldPwd);

}
