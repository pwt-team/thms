package com.thms.dao;

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

	
	
	
}
