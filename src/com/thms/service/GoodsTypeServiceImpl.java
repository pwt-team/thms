package com.thms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.GoodsType;
import com.thms.dao.GoodsTypeDao;

@Service
public class GoodsTypeServiceImpl implements GoodsTypeService {
	
	@Autowired
	public GoodsTypeDao goodsTypeDao;

	@Override
	public GoodsType findGoodsType(Integer id) {
		if(id == null) return null;
		return goodsTypeDao.findGoodsType(id);
	}

	@Override
	public GoodsType create(GoodsType type) {
		if(type == null) return null;
		return goodsTypeDao.create(type);
	}

	@Override
	public GoodsType update(GoodsType type) {
		if(type == null) return null;
		return goodsTypeDao.update(type);
	}

	@Override
	public List<GoodsType> findAll() {
		return goodsTypeDao.findAll();
	}

}
