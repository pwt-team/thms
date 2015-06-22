package com.thms.service;

import java.util.List;

import com.thms.bean.GoodsType;

public interface GoodsTypeService {

	public GoodsType findGoodsType(Integer id);

	public GoodsType create(GoodsType type);

	public GoodsType update(GoodsType type);

	public List<GoodsType> findAll();

}
