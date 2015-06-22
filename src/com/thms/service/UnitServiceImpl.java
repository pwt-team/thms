package com.thms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.Unit;
import com.thms.dao.UnitDao;

@Service
public class UnitServiceImpl implements UnitService {
	
	@Autowired
	public UnitDao unitDao;

	@Override
	public Unit findUnit(Integer id) {
		if(id == null) return null;
		return unitDao.findUnit(id);
	}


	@Override
	public List<Unit> findAll() {
		return unitDao.findAll();
	}


	@Override
	public Unit create(Unit unit) {
		if(unit == null) return null;
		return unitDao.create(unit);
	}


	@Override
	public Unit update(Unit unit) {
		if(unit == null) return null;
		return unitDao.update(unit);
	}

}
