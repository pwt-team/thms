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

import org.hibernate.annotations.Type;

import com.thms.common.Constants;
/**
 * ClassName: Goods 
 * @Description: 商品信息类
 * @author yuanzhong
 * @date 2015年6月20日  上午9:45:11
 */
@Entity
@Table(name="goods")
public class Goods implements Serializable{


	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_")
	private Integer id;
	/** 名称 */
	@Column(name = "NAME_",nullable=false)
	private String name;
	/** 编码 */
	@Column(name = "CODE_")
	private String code;
	/** 描述 */
	@Type(type="text") 
	@Column(name = "DESCRIPTION_")
	private String description;
	/** 类型 */
	@ManyToOne
	@JoinColumn(name="TYPE_ID_")
	private GoodsType goodsType;
	/** 单位 */
	@ManyToOne
	@JoinColumn(name="UNIT_")
	private Unit unit;
	/** 单价 */
	@Column(name="PRICE_",nullable=false)
	private Float price;
	/** 库存 */
	@Column(name="QUANTITY_",nullable=false)
	private Integer quantity;
	/** 折扣 */
	@Column(name="DISCOUNT_")
	private Float discount = 1f;
	/** 备注 */
	@Column(name = "REMARK_")
	private String remark;
	/** 热度 */
	@Column(name = "HOT_")
	private Integer hot = Constants.NEW;
	/** 状态 */
	@Column(name = "STATUS_")
	private Integer status = Constants.NEW;
	/** 删除标识 */
	@Column(name = "ISDELETE_", length = 1)
	private Integer isDelete = Constants.NEW;
	/** 商品附属物件 */
	@ManyToOne
	@JoinColumn(name="ATTACH_ID_")
	private GoodsAttach goods_attach;
	/** 库存扣减方式 */
	@Column(name="DOWNTYPE_",length=1)
	private Integer downtype = Constants.NEW;
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public GoodsType getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}
	public Unit getUnit() {
		return unit;
	}
	public void setUnit(Unit unit) {
		this.unit = unit;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Float getDiscount() {
		return discount;
	}
	public void setDiscount(Float discount) {
		this.discount = discount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getHot() {
		return hot;
	}
	public void setHot(Integer hot) {
		this.hot = hot;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public GoodsAttach getGoods_attach() {
		return goods_attach;
	}
	public void setGoods_attach(GoodsAttach goods_attach) {
		this.goods_attach = goods_attach;
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
	public Integer getDowntype() {
		return downtype;
	}
	public void setDowntype(Integer downtype) {
		this.downtype = downtype;
	}	
	

}
