package com.thms.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.thms.common.Constants;

/**
 * 
 * ClassName: Iinvoice
 * 
 * @Description: 发票类
 * @author yuanzhong
 * @date 2015年6月17日 下午1:27:35
 */
@Entity
@Table(name = "invoice")
public class Invoice implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_")
	private Integer id;
	/** name */
	@Column(name = "NAME_")
	private String name;
	/** 短名称 */
	@Column(name = "SHORTNAME_")
	private String shortName;
	/** user */
	@ManyToOne
	@JoinColumn(name="USERID_")
	private User user;
	/** 状态 */
	@Column(name = "STATUS_",length=1)
	private Integer status = Constants.NEW;		
	/** 创建时间 */
	@Column(name = "CREATEDTIME_")
	private Date createdTime;	
	/** 更新时间 */
	@Column(name = "UPDATEDTIME_")
	private Date updatedTime;
	
	
	//get/set
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
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
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	
}
