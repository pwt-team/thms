package com.thms.dao;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.thms.bean.Goods;
import com.thms.dao.update.BaseDao;
/**
 * ClassName: GoodsDao 
 * @Description: 商品Dao
 * @author yuanzhong
 * @date 2015年6月20日  上午10:02:23
 */
@Transactional
@Repository
public class GoodsDao extends BaseDao<Goods, Long> {

	public Goods findGoods(Integer id) {
		if(id == null) return null;
		String hql = "select g from Goods g where id = ?";
		return  (Goods) getSession().createQuery(hql).setParameter(0, id).uniqueResult();
	}

	public Goods create(Goods goods) {
		if(goods == null) return null;
		goods.setCreatedTime(new Date());
		getSession().save(goods);
		return goods;
	}

	public Goods update(Goods goods) {
		if(goods == null) return null;
		goods.setUpdatedTime(new Date());
		getSession().update(goods);
		return goods;
	}

	
	
	
}
