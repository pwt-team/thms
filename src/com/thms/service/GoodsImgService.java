package com.thms.service;

import com.thms.bean.Goods;
import com.thms.bean.GoodsImg;

public interface GoodsImgService {
	
	/**
	 * @Description: 添加商品图片
	 * @param: goodsImg
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	public GoodsImg create(GoodsImg goodsImg);

	/**
	 * @Description: 根据商品查询商品主图
	 * @param: goods
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	public GoodsImg findMainImg(Goods goods);

	/**
	 * @Description: 更新商品图片
	 * @param: goodsImg
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	public GoodsImg update(GoodsImg goodsImg);

}
