package com.thms.service;

import java.util.List;

import com.thms.bean.Unit;

public interface UnitService {

	public Unit findUnit(Integer id);

	public Unit create(Unit unit);

	public Unit update(Unit unit);

	public List<Unit> findAll();

}
