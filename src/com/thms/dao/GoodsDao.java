package com.thms.dao;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import com.thms.bean.Goods;
import com.thms.common.Constants;
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

	public int findSize() {
		String hql = "select count(1) from Goods";
		return ((Long) getSession().createQuery(hql).uniqueResult()).intValue();
	}

	@SuppressWarnings("unchecked")
	public List<Goods> findAll() {
		String hql = "select g from Goods g where isDelete is not ? order by createdTime desc";
		return getSession().createQuery(hql)
				.setParameter(0, Constants.DELETED)
				.setFirstResult(0).setMaxResults(Constants.PAGESIZE)
				.list();
	}

	@SuppressWarnings("unchecked")
	public List<Goods> findGoods(Integer pageNo, Integer psize) {
		String hql = "select g from Goods g where isDelete is not ? order by createdTime desc";
		return getSession().createQuery(hql)
				.setParameter(0, Constants.DELETED)
				.setFirstResult(pageNo * psize).setMaxResults(psize)
				.list();
	}

	@SuppressWarnings("unchecked")
	public List<Goods> findGoods(Integer typeId, String name, Integer pageNo,
			Integer psize) {
		StringBuffer hql = new StringBuffer();
		hql.append("select g from Goods g where ");
		if(typeId != null){
			hql.append(" goodsType = " + typeId +" and " );
		}
		if(StringUtils.isNotEmpty(name)){
			hql.append(" name like  '%" + name + "%'  and ");
		}
		hql.append(" status is not ? order by createdTime desc ");
		return getSession().createQuery(hql.toString())
					.setParameter(0, Constants.DELETED)
					.setFirstResult(pageNo == null ? 0 : pageNo)
					.setMaxResults(psize == null ? Constants.PAGESIZE : psize)
					.list();
	}

	@SuppressWarnings("unchecked")
	public List<Goods> findGoodsByType(Integer type, Integer pageNo, Integer psize) {
		if(type == null )return null;
		String hql = "select g from Goods g where  goodsType.id =  ? and  isDelete is not ? ";
		return getSession().createQuery(hql)
							.setParameter(0, type)
							.setParameter(1, Constants.DELETED)
							.setFirstResult(pageNo==null ? 0:pageNo)
							.setMaxResults(psize==null ? Constants.PAGESIZE : psize)
							.list();
	}

	
	
	
}
