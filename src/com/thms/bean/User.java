package com.thms.bean;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.thms.common.Constants;

/**
 * 
 * ClassName: User
 * 
 * @Description: 用户类
 * @author yuanzhong
 * @date 2015年6月11日 下午10:42:35
 */
@Entity
@Table(name = "users")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_")
	private Integer id;
	/** 用户名/妮称 */
	@Column(name = "NAME_")
	private String name;
	/** 登录密码 */
	@Column(name = "PASSWORD_",nullable=false)
	private String password;
	/** 注册邮箱 */
	@Column(name = "EMAIL_",nullable=false)
	private String email;
	/** 手机号 */
	@Column(name = "PHONE_")
	private String phone;	
	/** 生日 */
	@Column(name = "BIRTHDAY_")
	private Date birthday;		
	/** 邮箱贴激活状态 */
	@Column(name = "STATUS_", length = 1)
	private Integer status = Constants.NEW;
	/** 删除标识 */
	@Column(name = "ISDELETE_", length = 1)
	private Integer isDelete = Constants.NEW;
	/** 邮箱贴激活验证码 */
	@Column(name = "VALIDATECODE_")
	private String validateCode;
	/** 注册时间 */
	@Column(name = "REGISTERTIME_")
	private Date registerTime;
	/** 激活时间 */
	@Column(name = "VALIDATETIME_")
	private Date validateTime;	
	/** 性别 */
	@Column(name = "SEX_",length=1)
	private Integer sex = Constants.MAN;
	/** 头像 */
	@Column(name = "FACE_")
	private String face;	
	/** 等级 */
	@Column(name = "LEVEL_")
	private Integer level;	
	/** 地址 */
	@Column(name = "ADDRESS_")
	private String address;		
	/** 创建时间 */
	@Column(name = "CREATEDTIME_")
	private Date createdTime;	
	/** 更新时间 */
	@Column(name = "UPDATEDTIME_")
	private Date updatedTime;	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public Date getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}
	
	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public Date getValidateTime() {
		return validateTime;
	}

	public void setValidateTime(Date validateTime) {
		this.validateTime = validateTime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	@Transient
	public Date getLastActivateTime() {
		Calendar cl = Calendar.getInstance();
		cl.setTime(registerTime);
		cl.add(Calendar.DATE, 2);

		return cl.getTime();
	}

}
