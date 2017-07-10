package cn.usst.market.utils;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.usst.market.po.Goods;
import cn.usst.market.service.GoodsService;

@Controller
public class EchartsController {
	@Autowired
	private GoodsService goodsService;
	/**
	 * 获取APP信息,用echarts显示
	 * 
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/echarts.do")
	public List<Goods> getAllEcharts() throws Exception {
		List<Goods> list = new ArrayList<Goods>();
		for (int i = 0; i < 10; i++) {
			Goods goods = new Goods();
			goods.setName("name" + i);
			goods.setNum("" + i);
			list.add(goods);
		}
		System.out.println(list);
		return list;
	}

	@ResponseBody
	@RequestMapping(value = "/echarts2.do")
	public List<Goods> getAllEcharts2() throws Exception {
		List<Goods> list = goodsService.queryGoods();
		return list;
	}
}
