package com.thms.web;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.thms.bean.Goods;
import com.thms.bean.GoodsImg;
import com.thms.service.GoodsImgService;
import com.thms.service.GoodsService;

@Controller
@RequestMapping(value="/home")
public class HomeController {
	
	@Autowired
	public GoodsService goodsService;
	@Autowired
	public GoodsImgService goodsImgService;
	
	
	@RequestMapping(value="/index")
	public ModelAndView index(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home/home");
		//房间商品
		List<Goods> hoseGoods = goodsService.findGoodsByType(1,0,8);
		if(hoseGoods != null && hoseGoods.size() > 0){
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (Goods hg : hoseGoods) {
				list.add(addMap(hg));
			}
			mv.addObject("houseGoods", list);
		}
		//茶叶商品
		List<Goods> teaGoods = goodsService.findGoodsByType(2,0,8);
		if(teaGoods != null && teaGoods.size() > 0){
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (Goods tg : teaGoods) {
				list.add(addMap(tg));
			}
			mv.addObject("teaGoods", list);
		}		
		//茶具商品
		List<Goods> toolGoods = goodsService.findGoodsByType(3,0,8);
		if(toolGoods != null && toolGoods.size() > 0){
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (Goods tg : toolGoods) {
				list.add(addMap(tg));
			}
			mv.addObject("toolGoods", list);
		}	
		//文化商品
		List<Goods> cultureGoods = goodsService.findGoodsByType(4,0,8);
		if(cultureGoods != null && cultureGoods.size() > 0){
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (Goods tg : cultureGoods) {
				list.add(addMap(tg));
			}
			mv.addObject("cultureGoods", list);
		}		
		return mv;
	}
	
	/**
	 * @Description: 根据商品类别查询商品
	 * @param: @param type
	 * @author: yuanzhong
	 * @date: 2015年6月25日
	 */
	public List<Goods> findGoods(Integer type,Integer pageNo,Integer psize){
		List<Goods> goodss = goodsService.findGoodsByType(type,pageNo,psize);
		return goodss;
	}
	
	
	/**
	 * @Description: 将商品信息组装成map
	 * @param: @param goods
	 * @author: yuanzhong
	 * @date: 2015年6月25日
	 */
	public Map<String, Object> addMap(Goods goods){
		if(goods == null) return null;
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("id", goods.getId());
		map.put("code", goods.getCode());
		map.put("name", goods.getName());
		map.put("price", new DecimalFormat("#.00").format(goods.getPrice()));
		map.put("quantity", goods.getQuantity());
		map.put("type", goods.getGoodsType().getName());
		map.put("hot", goods.getHot());
		Integer status = goods.getStatus();
		switch (status) {
		case 0:
			map.put("status", "正常");
			break;
		case 3:
			map.put("status", "锁定");
			break;
		case 4:
			map.put("status", "已结算");
			break;	
		case 9:
			map.put("status", "已完成");
			break;					
		}
		map.put("createdTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:SS").format(goods.getCreatedTime()));
		GoodsImg goodsImg = goodsImgService.findMainImg(goods);
		if(goodsImg != null){
			map.put("coverImg", goodsImg.getImg_url());
		}
		return map;
	}

}
