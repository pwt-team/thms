package com.thms.dao;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.thms.bean.Goods;
import com.thms.bean.GoodsImg;
import com.thms.dao.update.BaseDao;
@Repository
@Transactional
public class GoodsImgDao extends BaseDao<GoodsImg, Integer> {

	public GoodsImg create(GoodsImg goodsImg) {
		if(goodsImg == null) return null;
		goodsImg.setCreatedTime(new Date());
		getSession().save(goodsImg);
		return goodsImg;
	}

	public GoodsImg findMainImg(Goods goods) {
		if(goods == null) return null;
		String hql= "select gm from GoodsImg gm where goods = ? and cover = ?";
		return (GoodsImg) getSession().createQuery(hql)
							.setParameter(0, goods)
							.setParameter(1, GoodsImg.MAIN)
							.uniqueResult();
	}

	public GoodsImg update(GoodsImg goodsImg) {
		if(goodsImg == null) return null;
		goodsImg.setUpdatedTime(new Date());
		getSession().update(goodsImg);
		return goodsImg;
	}

}
