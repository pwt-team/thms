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
 * ClassName: Goods_img 
 * @Description: 商品图片
 * @author yuanzhong
 * @date 2015年6月20日  上午9:56:20
 */
@Entity
@Table(name = "goods_imgs")
public class GoodsImg implements Serializable {

	private static final long serialVersionUID = 1L;
	
	public static final Integer MAIN = 1;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_")
	private Integer id;
	/** 名称 */
	@Column(name = "NAME_")
	private String name;
	/** 图片地址 */
	@Column(name = "IMG_URL_")
	private String img_url;
	/** 商品 */
	@ManyToOne
	@JoinColumn(name="GOODS_ID_")
	private Goods goods;
	/** 主图,默认为0,主图为1 */
	@Column(name = "COVER_")
	private Integer cover = Constants.NEW;;
	/** 删除标识 */
	@Column(name = "ISDELETE_", length = 1)
	private Integer isDelete = Constants.NEW;
	/** 创建时间 */
	@Column(name = "CREATEDTIME_")
	private Date createdTime;
	/** 更新时间 */
	@Column(name = "UPDATEDTIME_")
	private Date updatedTime;
	
	//getter/setter
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
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public Integer getCover() {
		return cover;
	}
	public void setCover(Integer cover) {
		this.cover = cover;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
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
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}
