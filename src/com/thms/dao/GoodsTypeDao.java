package com.thms.dao;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.thms.bean.GoodsType;
import com.thms.common.Constants;
import com.thms.dao.update.BaseDao;

@Transactional
@Repository
public class GoodsTypeDao extends BaseDao<GoodsType, Long>{
	
	/**
	 * @Description: 根据ID查询商品类型
	 * @param @param id
	 * @return GoodsType  
	 * @author yuanzhong
	 * @date 2015年6月20日 上午10:21:24
	 */
	public GoodsType findGoodsType(Integer id) {
		if(id == null) return null;
		String hql = "select gt from GoodsType gt where id = ?";
		return (GoodsType) getSession().createQuery(hql).setParameter(0, id).uniqueResult();
	}

	
	/**
	 * @Description: 创建商品类型
	 * @param @param type
	 * @return GoodsType  
	 * @author yuanzhong
	 * @date 2015年6月20日 上午10:21:42
	 */
	public GoodsType create(GoodsType type) {
		if(type == null) return null;
		type.setCreatedTime(new Date());
		getSession().save(type);
		return type;
	}

	/**
	 * @Description: 更新商品类型
	 * @param @param type
	 * @return GoodsType  
	 * @author yuanzhong
	 * @date 2015年6月20日 上午10:25:12
	 */
	public GoodsType update(GoodsType type) {
		if(type == null) return null;
		type.setUpdatedTime(new Date());
		getSession().update(type);
		return type;
	}

	/**
	 * @Description: 查询所有未删除的商品类型
	 * @return List<GoodsType>  
	 * @author yuanzhong
	 * @date 2015年6月20日 下午2:05:52
	 */
	@SuppressWarnings("unchecked")
	public List<GoodsType> findAll() {
		String hql = "select gt from GoodsType gt where isDelete is not ?";
		return getSession().createQuery(hql).setParameter(0, Constants.DELETED).list();
	}
}
