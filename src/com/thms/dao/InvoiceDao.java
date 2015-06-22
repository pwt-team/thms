package com.thms.dao;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import com.thms.bean.Invoice;
import com.thms.common.Constants;
import com.thms.dao.update.BaseDao;
/**
 * ClassName: InvoiceDao 
 * @Description: 发票DAO
 * @author yuanzhong
 * @date 2015年6月17日  上午1:29:48
 */
@Transactional
@Repository
public class InvoiceDao extends BaseDao<Invoice, Integer>{

	/**
	 * @Description: 创建一个新发票
	 * @param @param invoice
	 * @param @return   
	 * @return Invoice  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月18日 上午12:05:35
	 */
	public Invoice save(Invoice invoice) {
		invoice.setCreatedTime(new Date());
		getSession().save(invoice);
		return invoice;
	}

	/**
	 * @Description: 编辑一张发票
	 * @param @param invoice
	 * @param @return   
	 * @return Invoice  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月18日 上午12:06:21
	 */
	public Invoice update(Invoice invoice) {
		invoice.setUpdatedTime(new Date());
		getSession().update(invoice);
		return invoice;
		
	}

	
	/**
	 * @Description: 通过ID查询发票
	 * @param @param id
	 * @return Invoice  
	 * @author yuanzhong
	 * @date 2015年6月17日 下午8:22:18
	 */
	public Invoice findInvoice(Integer id) {
		if(id == null) return null;
		String hql = "select i from Invoice i where id = ? and status is not ?";
		return (Invoice) getSession().createQuery(hql)
				.setParameter(0, id)
				.setParameter(1, Constants.DELETED)
				.uniqueResult();
	}

	/**
	 * @param uid 
	 * @Description: 根据发票名称查询
	 * @param @param name
	 * @return Invoice  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月17日 下午11:54:30
	 */
	public Invoice findInvoice(String name, Integer uid) {
		if(StringUtils.isEmpty(name) && uid != null) return null;
		String hql = "select i from Invoice i where name = ? and user.id = ? and status is not ?";
		return (Invoice) getSession().createQuery(hql)
						.setParameter(0, name)
						.setParameter(1, uid)
						.setParameter(2,Constants.DELETED)
						.uniqueResult();
	}

	/**
	 * @Description: 根据用户id查询发票
	 * @param @param uid
	 * @return List<Invoice>  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月18日 上午12:33:33
	 */
	@SuppressWarnings("unchecked")
	public List<Invoice> findInvoices(Integer uid) {
		if(uid == null) return null;
		String hql = "select i from Invoice i where user.id = ? and status is not ?";
		return getSession().createQuery(hql)
				.setParameter(0, uid)
				.setParameter(1, Constants.DELETED)
				.list();
	}

}
