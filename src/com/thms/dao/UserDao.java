package com.thms.dao;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.thms.bean.User;
import com.thms.common.Constants;
import com.thms.dao.update.BaseDao;
@Transactional
@Repository
public class UserDao extends BaseDao<User, Integer>{

	/**
	 * @Description: 添加用户
	 * @param @param user
	 * @param @return   
	 * @return User  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月17日 上午1:03:14
	 */
	public User save(User user) {
		user.setCreatedTime(new Date());
		getSession().save(user);
		return user;
	}

	/**
	 * @Description: 根据邮箱地址查询用户
	 * @param @param email
	 * @param @return   
	 * @return User  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月17日 上午1:03:34
	 */
	public User find(String email) {
		String hql = "select u from User u where email = ? ";
		User user = (User) getSession().createQuery(hql)
				.setParameter(0, email)
				.uniqueResult();
		return user;
	}

	/**
	 * @Description: 更新用户信息
	 * @param @param user
	 * @param @return   
	 * @return User  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月17日 上午1:04:03
	 */
	public User update(User user) {
		user.setUpdatedTime(new Date());
		getSession().update(user);
		return user;
		
	}
	/**
	 * @Description: 通过邮箱和密码验证用户
	 * @param @param email
	 * @param @param pwd
	 * @param @return   
	 * @return User  
	 * @author yuanzhong
	 * @date 2015年6月14日 下午1:51:41
	 */
	public User find(String email, String pwd) {
		String hql = "select u from User u where email = ? and password = ? and status is not ?";
		User user = (User) getSession().createQuery(hql)
				.setParameter(0, email)
				.setParameter(1, pwd)
				.setParameter(2, Constants.DELETED)
				.uniqueResult();
		return user;
	}

	/**
	 * @Description: 根据用户Id查询用户
	 * @param @param uid
	 * @param @return   
	 * @return User  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月17日 上午1:04:17
	 */
	public User find(Integer uid) {
		String hql = "select u from User u where id = ?";
		User user = (User) getSession().createQuery(hql).setParameter(0, uid).uniqueResult();
		return user;
	}

	/**
	 * @Description: 根据用户ID与密码查询用户
	 * @param @param uid
	 * @param @param oldPwd
	 * @param @return   
	 * @return User  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月18日 下午11:25:02
	 */
	public User find(Integer uid, String oldPwd) {
		String hql = "select u from User u where id = ? and password = ? and status is not ?";
		User user = (User) getSession().createQuery(hql)
				.setParameter(0, uid)
				.setParameter(1, oldPwd)
				.setParameter(2, Constants.DELETED)
				.uniqueResult();
		return user;
	}

}
