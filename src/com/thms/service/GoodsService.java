package com.thms.service;

import java.util.List;

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

	/**
	 * @Description: 查询所有商品信息(按默认分页,降序)
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月24日
	 */
	public List<Goods> findAll();

	/**
	 * @Description: 分页查询商品信息
	 * @param: @param pageNo
	 * @param: @param psize
	 * @param: @return   
	 * @throws
	 * @author:yuanzhong
	 * @date: 2015年6月24日
	 */
	public List<Goods> findGoods(Integer pageNo, Integer psize);

	/**
	 * @Description: 根据类型或名称模糊查询商品
	 * @param: @param typeId
	 * @param: @param name
	 * @param: @param pageNo
	 * @param: @param psize
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月25日
	 */
	public List<Goods> findGoods(Integer typeId, String name, Integer pageNo,
			Integer psize);

	/**
	 * @param psize 
	 * @param pageNo 
	 * @Description: 根据类型查询商品
	 * @param: @param type
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月25日
	 */
	public List<Goods> findGoodsByType(Integer type, Integer pageNo, Integer psize);

}
