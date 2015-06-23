package com.thms.web;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.Goods;
import com.thms.bean.GoodsImg;
import com.thms.bean.GoodsType;
import com.thms.bean.Unit;
import com.thms.common.Constants;
import com.thms.service.GoodsImgService;
import com.thms.service.GoodsService;
import com.thms.service.GoodsTypeService;
import com.thms.service.UnitService;
import com.thms.util.JsonResult;
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
	@Autowired
	public GoodsService goodsService;
	@Autowired
	public GoodsImgService goodsImgService;
	
	/**
	 * @Description: 刷新/转向商品添加页面
	 * @param: @param id
	 * @param: @return   
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	@RequestMapping(value="/add")
	public ModelAndView index(@RequestParam (required=false) Integer id){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsAdd");
		Goods goods = goodsService.findGoods(id);
		if(goods != null){
			mv.addObject(goods);
			GoodsImg goodsImg = goodsImgService.findMainImg(goods);
			if(goodsImg != null){
				mv.addObject(goodsImg);
			}
		}
		
		//组装商品类别
		List<GoodsType> types = goodsTypeService.findAll();
		mv.addObject("types",types);
		//组装单位
		List<Unit> units = unitService.findAll();
		mv.addObject("units",units);
		return mv;
	}
	
	/**
	 * @Description: 添加/编辑商品信息
	 * @param:  id
	 * @param:  name 商品名称
	 * @param:  typeId 商品类型Id
	 * @param:  unitId 单位id
	 * @param:  price 单价
	 * @param:  qty 数量
	 * @param:  img1 图片1
	 * @param:  img2 图片2
	 * @param:  downtype 扣减库存方式
	 * @param: @return   
	 * @throws
	 * @author yuanzhong
	 * @date: 2015年6月23日
	 */
	@RequestMapping(value="/create",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult create(
			@RequestParam (required=false) Integer id,
			@RequestParam String name,@RequestParam Integer typeId,
			@RequestParam Integer unitId,@RequestParam (required=false) Float price,
			@RequestParam (required=false) Integer qty,@RequestParam (required=false) String mainImg,
			@RequestParam Integer downtype,@RequestParam (required=false) String description
			){
		JsonResult json = new JsonResult(true);
		Goods goods = goodsService.findGoods(id);
		if(goods == null){
			goods = new Goods();
		}
		//set商品类型
		GoodsType goodsType = goodsTypeService.findGoodsType(typeId);
		if(goodsType != null){
			goods.setGoodsType(goodsType);
		}
		//set单位
		Unit unit = unitService.findUnit(unitId);
		if(unit != null){
			goods.setUnit(unit);
		}
		goods.setName(name);
		goods.setDescription(description);
		goods.setPrice(price);
		goods.setQuantity(qty);
		GoodsImg goodsImg = null;
		if(goods.getId() == null){
			goods = goodsService.create(goods);
			if(StringUtils.isNotEmpty(mainImg)){
				goodsImg = editMainImg(goods,mainImg);
			}
			json.msg(Constants.SUCCESS_TO_CREATED);
		}else{
			goods = goodsService.update(goods);
			if(StringUtils.isNotEmpty(mainImg)){
				goodsImg = editMainImg(goods,mainImg);
			}
			json.msg(Constants.SUCCESS_TO_CREATED);	
		}
		json.put("goods", goods);
		json.put("goodsImg",goodsImg);
		return json;
	}

	/**
	 * @Description: 编辑商品主图
	 * @param:  goods
	 * @param:  img
	 * @param: @return   
	 * @throws
	 * @author: yuanzhong
	 * @date: 2015年6月23日
	 */
	public GoodsImg editMainImg(Goods goods,String img){
		if(goods != null && StringUtils.isNotEmpty(img)){
			GoodsImg goodsImg = goodsImgService.findMainImg(goods);
			if(goodsImg == null){
				goodsImg = new GoodsImg();
				goodsImg.setCover(GoodsImg.MAIN);
				goodsImg.setImg_url(img);
				goodsImg.setName(img);
				goodsImg.setGoods(goods);
				goodsImg = goodsImgService.create(goodsImg);
			}else{
				goodsImg.setImg_url(img);
				goodsImg = goodsImgService.update(goodsImg);
			}
			return goodsImg;
		}
		return null;
	}

	@RequestMapping(value="/edit")
	public String edit(){
		return "goods/goodsEdit";
	}
}
