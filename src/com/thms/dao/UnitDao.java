package com.thms.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.thms.bean.Unit;
import com.thms.common.Constants;
import com.thms.dao.update.BaseDao;
@Transactional
@Repository
public class UnitDao extends BaseDao<Unit, Long> {

	/**
	 * @Description: 根据ID查询单位
	 * @param @param id
	 * @param @return   
	 * @return Unit  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月20日 下午7:27:19
	 */
	public Unit findUnit(Integer id) {
		if(id == null) return null;
		String hql = "select u from Unit u where id = ?";
		return (Unit) getSession().createQuery(hql)
				.setParameter(0, id).uniqueResult();
	}

	/**
	 * @Description: 查询所有未删除的单位
	 * @param @return   
	 * @return List<Unit>  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月20日 下午7:33:29
	 */
	@SuppressWarnings("unchecked")
	public List<Unit> findAll() {
		String hql = "select u from Unit u where isDelete is not ?";
		return getSession().createQuery(hql).setParameter(0, Constants.DELETED).list();
	}

	/**
	 * @Description: 创建一个单位
	 * @param @param unit
	 * @param @return   
	 * @return Unit  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月20日 下午7:34:37
	 */
	public Unit create(Unit unit) {
		if(unit == null) return null;
		getSession().save(unit);
		return unit;
	}

	/**
	 * @Description: 更新一个单位信息
	 * @param @param unit
	 * @return Unit  
	 * @author yuanzhong
	 * @date 2015年6月20日 下午7:35:01
	 */
	public Unit update(Unit unit) {
		if(unit == null) return null;
		getSession().update(unit);
		return unit;
	}

}
