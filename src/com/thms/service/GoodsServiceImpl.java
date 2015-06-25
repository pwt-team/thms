package com.thms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.Goods;
import com.thms.dao.GoodsDao;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	public GoodsDao goodsDao;

	@Override
	public Goods findGoods(Integer id) {
		if(id == null) return null;
		return goodsDao.findGoods(id);
	}

	@Override
	public Goods create(Goods goods) {
		if(goods == null) return null;
		return goodsDao.create(goods);
	}

	@Override
	public Goods update(Goods goods) {
		if(goods == null) return null;
		return goodsDao.update(goods);
	}

	@Override
	public int findSize() {
		return goodsDao.findSize();
	}

	@Override
	public List<Goods> findAll() {
		return goodsDao.findAll();
	}

	@Override
	public List<Goods> findGoods(Integer pageNo, Integer psize) {
		return goodsDao.findGoods(pageNo,psize);
	}

	@Override
	public List<Goods> findGoods(Integer typeId, String name, Integer pageNo,
			Integer psize) {
		return goodsDao.findGoods(typeId,name,pageNo,psize);
	}

	@Override
	public List<Goods> findGoodsByType(Integer type, Integer pageNo, Integer psize) {
		if(type == null) return null;
		return goodsDao.findGoodsByType(type,pageNo,psize);
	}

}
