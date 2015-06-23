package com.thms.service;

import com.thms.bean.Goods;

public interface GoodsService {

	/**
	 * @Description: 根据ID查询商品
	 * @param  id
	 * @param    
	 * @author yuanzhong
	 * @date: 2015年6月23日
	 */
	public Goods findGoods(Integer id);

	/**
	 * @Description: 添加商品
	 * @param: goods
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	public Goods create(Goods goods);

	
	/**
	 * @Description: 修改商品
	 * @param:  goods
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	public Goods update(Goods goods);

	/**
	 * @Description: 获取商品总数
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月24日
	 */
	public int findSize();

}
