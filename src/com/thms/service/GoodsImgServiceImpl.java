package com.thms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.Goods;
import com.thms.bean.GoodsImg;
import com.thms.dao.GoodsImgDao;

@Service
public class GoodsImgServiceImpl implements GoodsImgService {
	
	@Autowired
	public GoodsImgDao goodsImgDao;

	@Override
	public GoodsImg create(GoodsImg goodsImg) {
		if(goodsImg == null) return null;
		return goodsImgDao.create(goodsImg);
	}

	@Override
	public GoodsImg findMainImg(Goods goods) {
		if(goods == null) return null;
		return goodsImgDao.findMainImg(goods);
	}

	@Override
	public GoodsImg update(GoodsImg goodsImg) {
		if(goodsImg == null) return null;
		return goodsImgDao.update(goodsImg);
	}



}
