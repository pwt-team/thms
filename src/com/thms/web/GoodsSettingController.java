package com.thms.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.GoodsType;
import com.thms.bean.Unit;
import com.thms.common.Constants;
import com.thms.service.GoodsTypeService;
import com.thms.service.UnitService;
import com.thms.util.JsonResult;
/**
 * ClassName: GoodsSettingController 
 * @Description: 商品设置
 * @author yuanzhong
 * @date 2015年6月20日  上午10:11:23
 */
@Controller
@RequestMapping(value="/goodset")
public class GoodsSettingController {
	
	@Autowired
	public GoodsTypeService goodsTypeService;
	@Autowired
	public UnitService unitService;
	
	/**
	 * @Description: 设置首页
	 * @param @return   
	 * @return String  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月20日 上午10:13:21
	 */
	@RequestMapping(value="/index")
	public ModelAndView index(@RequestParam (required=false) Integer id){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsSetting");
		List<GoodsType> types = goodsTypeService.findAll();
		mv.addObject("goodsTypes",types);
		List<Unit> units = unitService.findAll();
		mv.addObject("units",units);
		return mv;
	}
	
	
	
	/**
	 * @Description: 添加一个类别
	 * @param @param id
	 * @param @param name
	 * @param @return   
	 * @return JsonResult  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月20日 上午10:11:40
	 */
	@RequestMapping(value="/addtype",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult add(@RequestParam (required = false) Integer id,
			@RequestParam String name){
		JsonResult json = new JsonResult(true);
		GoodsType type = goodsTypeService.findGoodsType(id);
		if(type == null){
			type = new GoodsType();
			type.setName(name);
			type = goodsTypeService.create(type);
		}else{
			type.setName(name);
			type = goodsTypeService.update(type);
		}
		List<GoodsType> types = goodsTypeService.findAll();
		json.put("goodsType", types);
		return json;
	}
	
	/**
	 * @Description: 根据ID逻辑删除一个商品类型
	 * @param @param id
	 * @return JsonResult  
	 * @author yuanzhong
	 * @date 2015年6月20日 下午4:44:11
	 */
	@RequestMapping(value="/delType",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult gdelete(@RequestParam Integer id){
		JsonResult json = new JsonResult(true);
		GoodsType type = goodsTypeService.findGoodsType(id);
		if(type != null){
			type.setIsDelete(Constants.DELETED);
			goodsTypeService.update(type);
		}
		List<GoodsType> types = goodsTypeService.findAll();
		json.put("goodsType", types);
		return json;
	}
	
	
	/**
	 * @Description: 创建一个新单位
	 * @param @param id
	 * @param @param name
	 * @return JsonResult  
	 * @author yuanzhong
	 * @date 2015年6月20日 下午7:22:36
	 */
	@RequestMapping(value="/addunit",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult addunit(@RequestParam (required = false) Integer id,
			@RequestParam String name){
		JsonResult json = new JsonResult(true);
		Unit unit = unitService.findUnit(id);
		if(unit == null){
			unit = new Unit();
			unit.setName(name);
			unit = unitService.create(unit);
		}else{
			unit.setName(name);
			unit = unitService.update(unit);
		}
		List<Unit> units = unitService.findAll();
		json.put("units", units);
		return json;
	}
	
	
	/**
	 * @Description: 删除一个单位
	 * @param @param id
	 * @return JsonResult  
	 * @author yuanzhong
	 * @date 2015年6月20日 下午7:57:16
	 */
	@RequestMapping(value="/delUnit",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult delUnit(@RequestParam Integer id){
		JsonResult json = new JsonResult(true);
		Unit unit = unitService.findUnit(id);
		if(unit != null){
			unit.setIsDelete(Constants.DELETED);
			unitService.update(unit);
		}
		List<Unit> units = unitService.findAll();
		json.put("units", units);
		return json;
	}

}
