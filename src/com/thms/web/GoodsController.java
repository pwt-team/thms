package com.thms.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.GoodsType;
import com.thms.bean.Unit;
import com.thms.service.GoodsTypeService;
import com.thms.service.UnitService;
/**
 * ClassName: GoodsController 
 * @Description: 商品控制器
 * @author yuanzhong
 * @date 2015年6月20日  下午8:46:16
 */
@Controller
@RequestMapping(value="/goods")
public class GoodsController {
	@Autowired
	public GoodsTypeService goodsTypeService;
	@Autowired
	public UnitService unitService;
	
	@RequestMapping(value="/add")
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsAdd");
		List<GoodsType> types = goodsTypeService.findAll();
		mv.addObject("types",types);
		List<Unit> units = unitService.findAll();
		mv.addObject("units",units);
		return mv;
	}
	
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	@ResponseBody
	public String create(){
		return "goods/goodsAdd";
	}


	@RequestMapping(value="/edit")
	public String edit(){
		return "goods/goodsEdit";
	}
}
